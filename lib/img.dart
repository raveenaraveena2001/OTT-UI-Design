import 'dart:io';
import 'dart:typed_data'; // Correct import for Uint8List
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  Uint8List? _image;
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Account"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Stack(
              children: [
                _image != null
                    ? Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    image: DecorationImage(
                      image: MemoryImage(_image!),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
                    : Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 2,
                  child: InkWell(
                    onTap: () => showImagePickerOption(context),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Center(child: Icon(Icons.camera_alt_outlined, size: 40)),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.person),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name",style: TextStyle(color: Colors.grey)),
                  Text("Raveena Mohankumar"),
                ],
              ),
              trailing: Icon(Icons.edit)
          ),
          Divider(
            color: Colors.black,
            height: 30,
            thickness: 1,
            //indent: 8,
            //endIndent: 8,
          ),
          ListTile(
              leading: Icon(Icons.phone),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Phone",style: TextStyle(color: Colors.grey)),
                  Text("+91 9360209794"),
                ],
              ),
              trailing: Icon(Icons.edit)
          ),
          Divider(
            color: Colors.black,
            height: 30,
            thickness: 1,
            //indent: 8,
            //endIndent: 8,
          ),
          ListTile(
              leading: Icon(Icons.lock),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Privacy"),

                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios)
          ),
          Divider(
            color: Colors.black,
            height: 30,
            thickness: 1,
            //indent: 8,
            //endIndent: 8,
          ),

        ],
      ),
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: _pickImageFromGallery,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.image),
                      Text("Gallery"),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: _pickImageFromCamera,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera_alt),
                      Text("Camera"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? returnImage = await picker.pickImage(source: ImageSource.gallery);
    if (returnImage != null) {
      setState(() {
        selectedImage = File(returnImage.path);
        _image = File(returnImage.path).readAsBytesSync();
      });
    }
  }

  Future<void> _pickImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? returnImage = await picker.pickImage(source: ImageSource.camera);
    if (returnImage != null) {
      setState(() {
        selectedImage = File(returnImage.path);
        _image = File(returnImage.path).readAsBytesSync();
      });
    }
  }
}