import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: [
              Text("Search",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.cast,size: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_circle,color: Colors.orange.shade700,size: 40,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          //color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Genres",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.grey
                      ),
                      child: Center(child: Text("Action and adventure")),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border.all(),
                        color: Colors.grey,
                      ),
                      child: Center(child: Text("Anime")),

                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border.all(),
                        color: Colors.grey

                      ),
                      child: Center(child: Text("Comedy")),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border.all(),
                        color: Colors.grey

                      ),
                      child: Center(child: Text("Documentary")),

                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.grey

                      ),
                      child: Center(child: Text("Drama")),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.grey

                      ),
                      child: Center(child: Text("Fantasy")),

                    ),
                  ),
                ],
              ),


              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text("See more")),
                ),
              ),

              SizedBox(height: 15,),
              Text("Featured collections",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              
              SizedBox(height: 15,),
              ListTile(
                  title: Text("Tamil"),
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
                  title: Text("English"),
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
                  title: Text("Hindi"),
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
                  title: Text("Malayalam"),
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
                  title: Text("Telugu"),
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
                  title: Text("Kanada"),
                  trailing: Icon(Icons.arrow_forward_ios)
              ),
              Divider(
                color: Colors.black,
                height: 30,
                thickness: 1,
                //indent: 8,
                //endIndent: 8,
              ),


              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text("See more")),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}