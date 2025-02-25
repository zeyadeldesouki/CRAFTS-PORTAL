import 'package:craftsportal/Core/AppStyles.dart';
import 'package:craftsportal/generated/l10n.dart';
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
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

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
        title: Text(S.of(context).EditAccount),
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
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: _image != null
                                    ? FileImage(_image!)
                                    : const NetworkImage(
                                        "https://th.bing.com/th/id/OIP.hGSCbXlcOjL_9mmzerqAbQHaHa?w=197&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                                      ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: S.of(context).FirstName,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: S.of(context).LastName,
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
            TextField(
              decoration: InputDecoration(
                labelText: S.of(context).FondamentaVeniceItaly30133,
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
                labelText: '     ${S.of(context).addsocialprofile}',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              S.of(context).Notes,
              style: AppStyles.text20(context)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "${S.of(context).HiIam} ${FirebaseAuth.instance.currentUser!.displayName} ${S.of(context).aplumbing}",
              style: AppStyles.text14(context),
            ),
          ],
        ),
      ),
    );
  }
}
