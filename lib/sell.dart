import 'package:flutter/material.dart';
import 'book_store.dart';
import 'package:image_picker/image_picker.dart';

class SellPage extends StatefulWidget {
  @override
  State<SellPage> createState() => SellPageState();
}

class SellPageState extends State<SellPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _pincodeController = TextEditingController();
  final _amountController = TextEditingController();
  XFile? _image;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  void _sellBook() {
    if (_formKey.currentState?.validate() ?? false) {
      // Add book to the list
      BookStore.books.add(Book(
        title: _titleController.text,
        description: _descriptionController.text,
        seller: 'User',
        photoUrl: _image?.path ?? '',
        amount: int.parse(_amountController.text),
      ));

      // Clear the form
      _titleController.clear();
      _descriptionController.clear();
      _addressController.clear();
      _cityController.clear();
      _stateController.clear();
      _pincodeController.clear();
      _amountController.clear();
      setState(() {
        _image = null;
      });

      // Show confirmation
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Book listed for sale!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sell',style: TextStyle(color: Colors.brown.shade700,fontSize: 27,fontWeight: FontWeight.w700),),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildTextField(_titleController, 'Title'),
              _buildTextField(_descriptionController, 'Description'),
              _buildTextField(_addressController, 'Address'),
              _buildTextField(_cityController, 'City'),
              _buildTextField(_stateController, 'State'),
              _buildTextField(_pincodeController, 'Pincode'),
              _buildTextField(_amountController, 'Amount', isNumber: true),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _pickImage,
                child: Text('Pick Image'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: _sellBook,
                  child: Text('Sell Book'),
                ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, {bool isNumber = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          return null;
        },
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      ),
    );
  }
}