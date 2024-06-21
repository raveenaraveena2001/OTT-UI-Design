
import 'package:flutter/material.dart';
import 'package:untitled/search.dart';

class newhot extends StatefulWidget {
  const newhot({super.key});

  @override
  State<newhot> createState() => _newhotState();
}

class _newhotState extends State<newhot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("New&Hot",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("🍿 Coming soon",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 20,),
            ListTile(
                leading: Column(
                  children: [
                    Text("May",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("21")
                  ],
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160,
                      width: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://img.youtube.com/vi/QsdEfVM4t_8/0.jpg"),
                          fit: BoxFit.fill
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
        
                    ),
                    SizedBox(height: 10,),
                    Text("Coming May 21"),
                    Text("INDIAN 2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("Senapathy, an ex-freedom fighter turned vigilante who fights against corruption. Senapathy returns to the country to aid a young man who has been exposing corrupt politicians in the country through videos on the internet."),
                  ],
                ),
            ),
        
            Divider(
              color: Colors.black,
              height: 10,
              thickness: 1,
              //indent: 8,
              //endIndent: 8,
            ),
        
            ListTile(
              leading: Column(
                children: [
                  Text("May",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("21")
                ],
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160,
                    width: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://m.media-amazon.com/images/M/MV5BN2UzMzIyZWYtZTNkNi00MGE3LWI4YjAtZDc0Y2Y5NDc0NmZmXkEyXkFqcGdeQXVyMTUyNjIwMDEw._V1_.jpg"),
                            fit: BoxFit.fill
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),

                  ),
                  SizedBox(height: 10,),
                  Text("Coming june 5"),
                  Text("DEMONTE COLONY 2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  Text("Four inebriated friends decide to do something adventurous and visit a haunted bungalow. However, when one of them steals a diamond necklace, their home becomes a hotbed of supernatural activity."),
                ],
              ),
            ),

            Divider(
              color: Colors.black,
              height: 10,
              thickness: 1,
              //indent: 8,
              //endIndent: 8,
            ),
            ListTile(
              leading: Column(
                children: [
                  Text("May",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("21")
                ],
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160,
                    width: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://hindustanbollywood.com/wp-content/uploads/2024/02/maxresdefault-42.jpg"),
                            fit: BoxFit.fill
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),

                  ),
                  SizedBox(height: 10,),
                  Text("Coming Aug 21"),
                  Text("RATHTHAM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  Text("'Raththam' begins with the murder of Chezhiyan, who is an editor of a media house titled Vaanam. He is killed by a fanatic for an article he published against his idol. The story then shifts to Kolkata where Ranjith Kumar alias Kumar (Vijay Antony) is bringing up his daughter Arumpavai as a single father."),
                ],
              ),
            ),

            Divider(
              color: Colors.black,
              height: 10,
              thickness: 1,
              //indent: 8,
              //endIndent: 8,
            ),

            ListTile(
              leading: Column(
                children: [
                  Text("May",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("21")
                ],
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160,
                    width: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://www.koimoi.com/wp-content/new-galleries/2023/07/kanguva-poster-suriya-turns-into-a-mighty-warrior-as-he-surprises-fans-with-his-first-look-on-his-48th-birthday.jpg"),
                            fit: BoxFit.fill
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),

                  ),
                  SizedBox(height: 10,),
                  Text("Coming july 13"),
                  Text("KANGUVA",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  Text("A warrior in the 1678 dies due to a disease, in the present a girl does research on the disease which killed the warrior in 1678. A warrior in the 1678 dies due to a disease, in the present a girl does research on the disease which killed the warrior in 1678."),
                ],
              ),
            ),

            Divider(
              color: Colors.black,
              height: 10,
              thickness: 1,
              //indent: 8,
              //endIndent: 8,
            ),
          ],
        ),
      ),
    );
  }
}
