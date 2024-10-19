import 'dart:io';

import 'package:bookverse/userprofile.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late UserProfile user;
  final ImagePicker _picker = ImagePicker();
  String _photoUrl = '';

  @override
  void initState() {
    super.initState();
    user = UserProfile(
      name: 'John Doe',
      email: 'john.doe@example.com',
      photoUrl: '',
      bookRecords: ['Book 1', 'Book 2', 'Book 3'],
      purchases: ['Purchase 1', 'Purchase 2'],
      messages: ['Message 1', 'Message 2', 'Message 3'],
      activity: ['Activity 1', 'Activity 2', 'Activity 3'],
    );
  }

  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _photoUrl = image.path;
      });
    }
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.brown.shade700,
        ),
      ),
    );
  }

  Widget _buildList(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) => Text(item)).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style:
        TextStyle(fontWeight: FontWeight.w700,fontSize: 27,color: Colors.brown.shade700),),
        backgroundColor: Colors.yellowAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: _photoUrl.isNotEmpty
                        ? FileImage(File(_photoUrl))
                        : AssetImage('assets/images/user (1).png')
                    as ImageProvider,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                      onTap: _pickImage,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.brown.shade700,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),

            Text(
              user.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(user.email, style: TextStyle(fontSize: 16, color: Colors.black54)),
            Divider(thickness: 2, color: Colors.yellowAccent),
            _buildSectionTitle('Book Records'),
            _buildList(user.bookRecords),
            Divider(thickness: 2, color: Colors.yellowAccent),
            _buildSectionTitle('Purchases'),
            _buildList(user.purchases),
            Divider(thickness: 2, color: Colors.yellowAccent),
            _buildSectionTitle('Messages'),
            _buildList(user.messages),
            Divider(thickness: 2, color: Colors.yellowAccent),
            _buildSectionTitle('Activity'),
            _buildList(user.activity),
          ],
        ),
      ),
    );
  }
}