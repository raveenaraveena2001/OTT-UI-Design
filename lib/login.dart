
import 'package:flutter/material.dart';
import 'package:untitled/splash.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _ctrl = TextEditingController();
  bool _show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://media.tenor.com/images/18f2d9e614832fa816189ee96611a099/tenor.gif"),
                          fit: BoxFit.fill
                      ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Unlimited movies, TV shows and more",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (name) {
                    if (name == null || name.isEmpty) {
                      return "Invalid Name";
                    } else if (!RegExp(r'^[A-Za-z][A-Za-z0-9_]{0,29}$').hasMatch(name)) {
                      return "Please Enter Valid Name";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: _ctrl,
                  onChanged: (password) {
                    setState(() {
                      _show = true;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (password) {
                    if (password == null || password.isEmpty || password.length <= 4) {
                      return "Please Enter Valid Password";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 100),
              Visibility(
                visible: _show,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black,minimumSize: Size(80,40)),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _showAnimatedPopup(context);
                    }
                  },
                  child: const Text("GET STARTED🤩 ",style: TextStyle(color: Colors.white)
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAnimatedPopup(BuildContext context) {
    showGeneralDialog(
      context: context,
      pageBuilder: (context, animation1, animation2) {
        return Container(); // This is just a placeholder
      },
      barrierDismissible: true,
      barrierLabel: 'Dismiss',
      transitionDuration: const Duration(milliseconds: 300),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: AlertDialog(
            title: const Text('Login Successful'),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text('It\'s time to enjoy your movie time! 🍿🎬'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Splash()));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}