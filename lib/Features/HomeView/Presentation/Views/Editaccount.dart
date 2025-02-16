import 'package:craftsportal/Core/AppStyles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Editaccount extends StatefulWidget {
  const Editaccount({super.key});

  @override
  _EditaccountState createState() => _EditaccountState();
}

class _EditaccountState extends State<Editaccount> {
  File? _image;

  Future<void> _pickImage() async {
    
      final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
      }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Account"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.done),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                GestureDetector(
                  onTap: _pickImage,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    child: _image != null
                        ? ClipOval(
                            child: Image.file(
                              _image!,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Container(
                            decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image:_image != null ? FileImage(_image!) :
                                const NetworkImage(
                                  "https://th.bing.com/th/id/OIP.hGSCbXlcOjL_9mmzerqAbQHaHa?w=197&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                  ),
                ),
                const SizedBox(width: 20),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'First Name',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Fondamenta Zitelle 86 VeniceItaly, 30133',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: GestureDetector(
                  onTap: _pickImage,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.photo),
                  ),
                ),
                labelText: '     add social profile',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Notes",
              style: AppStyles.text20(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Hi I am ${FirebaseAuth.instance.currentUser!.displayName} a plumbing professional for 10 years and ready to fulfill all requests",
              style: AppStyles.text14(context),
            ),
          ],
        ),
      ),
    );
  }
}