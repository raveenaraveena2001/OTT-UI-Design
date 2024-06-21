
import 'package:flutter/material.dart';
import 'package:untitled/search.dart';

import 'findmore.dart';

class downloads extends StatefulWidget {
  const downloads({super.key});

  @override
  State<downloads> createState() => _downloadsState();
}

class _downloadsState extends State<downloads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Downloads",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.cast,size: 25,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              height: 30,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const search()),);
                },
                child: Center(child: Icon(Icons.search,size: 25,)),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        //color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No videos downloaded",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const findmore()),);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Find videos to download",style: TextStyle(fontSize:17),)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Auto Downloads: on",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(".",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Manage",style: TextStyle(color: Colors.blue),),
                ),

              ],
            )
        ],
      ),
      ),
    );
  }
}
