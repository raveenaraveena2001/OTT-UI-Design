import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/settings.dart';


class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  Uint8List? _image;

  String _name = "Raveena Mohankumar";
  String _phone = "+91 9360209794";

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadImageFromPreferences();
  }

  Future<void> saveImageToPreferences(Uint8List imageBytes) async {
    final String base64String = base64Encode(imageBytes);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('saved_image', base64String);
  }

  Future<void> loadImageFromPreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? base64String = prefs.getString('saved_image');

    if (base64String != null) {
      final Uint8List bytes = base64Decode(base64String);
      setState(() {
        _image = bytes;
      });
    }
  }

  void _editInfo(String title, String currentValue, TextEditingController controller, Function(String) onSave) {
    controller.text = currentValue;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit $title'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: "Enter new $title"),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                onSave(controller.text);
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void showImagePickerOption() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context). pop();
                      _pickImageFromGallery();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.image, size: 30),
                        Text("Gallery", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context). pop();
                      _pickImageFromCamera();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.camera_alt, size: 30),
                        Text("Camera", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? returnImage = await picker.pickImage(source: ImageSource.gallery);
    if (returnImage != null) {
      final Uint8List imageBytes = await returnImage.readAsBytes();
      await saveImageToPreferences(imageBytes);
      setState(() {
        _image = imageBytes;
      });
    }
  }

  Future<void> _pickImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? returnImage = await picker.pickImage(source: ImageSource.camera);
    if (returnImage != null) {
      final Uint8List imageBytes = await returnImage.readAsBytes();
      await saveImageToPreferences(imageBytes);
      setState(() {
        _image = imageBytes;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: const Text("My FlimVista 🎬🍿", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(100),
                    image: _image != null ? DecorationImage(image: MemoryImage(_image!), fit: BoxFit.cover) : null,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 2,
                  child: InkWell(
                    onTap: showImagePickerOption,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(Icons.camera_alt_outlined, size: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          ListTile(
            leading: const Icon(Icons.person),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Name", style: TextStyle(color: Colors.grey)),
                Text(_name),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                _editInfo("name", _name, _nameController, (value) {
                  setState(() {
                    _name = value;
                  });
                });
              },
            ),
          ),
          const Divider(color: Colors.black, height: 30, thickness: 1),
          ListTile(
            leading: const Icon(Icons.phone),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Phone", style: TextStyle(color: Colors.grey)),
                Text(_phone),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                _editInfo("phone", _phone, _phoneController, (value) {
                  setState(() {
                    _phone = value;
                  });
                });
              },
            ),
          ),
          const Divider(color: Colors.black, height: 30, thickness: 1),
          ListTile(
              leading: Icon(Icons.lock),
              title: Text("Privacy"),
              trailing: Icon(Icons.arrow_forward_ios)
          ),
          Divider(
            color: Colors.black,
            height: 30,
            thickness: 1,
            //indent: 8,
            //endIndent: 8,
          ),

          Container(
            height: 40,
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  settings()));
              },
              child: ListTile(
                  leading: Icon(Icons.settings_suggest_outlined),
                  title: Text("Settings"),
                  trailing: Icon(Icons.arrow_forward_ios)
              ),
            ),
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

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
}
