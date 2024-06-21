
import 'package:flutter/material.dart';
import 'package:untitled/t1.dart';
import 'account.dart';


class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeController = ThemeController.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 20,
            width: 30,
            child: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Account()),);
              },
                child: Icon(Icons.arrow_back)
            ),
        ),
        title: Row(
          children: [
            Text('Settings',style: TextStyle(fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(Icons.settings_suggest_outlined),
            ),
          ],
        ),
      ),
      body: Column(

        children:[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              ListTile(
                  title: Text("Fourites"),
                  trailing: Icon(Icons.arrow_forward_ios)
              ),

              Divider(
                color: Colors.black,
                height: 30,
                thickness: 1,
                //indent: 8,
                //endIndent: 8,
              ),
              ListTile(
                  title: Text("Prime & Subscription"),
                  trailing: Icon(Icons.arrow_forward_ios)
              ),

              Divider(
                color: Colors.black,
                height: 30,
                thickness: 1,
                //indent: 8,
                //endIndent: 8,
              ),
              ListTile(
                  title: Text("Help & FeedBack"),
                  trailing: Icon(Icons.arrow_forward_ios)
              ),

              Divider(
                color: Colors.black,
                height: 30,
                thickness: 1,
                //indent: 8,
                //endIndent: 8,
              ),
              ListTile(
                  title: Text("About & Legal"),
                  trailing: Icon(Icons.arrow_forward_ios)
              ),

              Divider(
                color: Colors.black,
                height: 30,
                thickness: 1,
                //indent: 8,
                //endIndent: 8,
              ),
              ListTile(
                title: Text('Theme'),
                trailing: Switch(
                  value: themeController.currentTheme == 'dark',
                  onChanged: (value) {
                    themeController.setTheme(value ? 'dark' : 'light');
                  },
                ),
              ),
              Divider(
                color: Colors.black,
                height: 30,
                thickness: 1,
                //indent: 20,
                //endIndent: 20,
              ),
            ],
          ),

        ],
      ),
    );
  }
}
