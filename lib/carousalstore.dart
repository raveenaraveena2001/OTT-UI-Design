
import 'package:flutter/material.dart';
import 'package:untitled/vdplay.dart';



class carousalstore extends StatefulWidget {
  const carousalstore({super.key});

  @override
  State<carousalstore> createState() => _carousalstoreState();
}

class _carousalstoreState extends State<carousalstore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 220),
            child: Icon(Icons.cast,size: 25,color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Icon(Icons.account_circle,color: Colors.orange.shade700,size: 40,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          //color: Colors.black,
          child: DefaultTabController(
            length: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/movie2.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Operation Valentine",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Wish",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => vdplay()),);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("How do I watch this?",style: TextStyle(fontSize: 17),)),
                      ),
                    ),
                  ),
                ),




                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: [
                            Icon(Icons.video_collection_outlined),
                            Text("Trailer")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: Column(
                          children: [
                            Icon(Icons.add,),
                            Text("Trailer")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: Column(
                          children: [
                            Icon(Icons.thumb_up_alt_outlined,),
                            Text("Trailer",)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: Column(
                          children: [
                            Icon(Icons.thumb_down_alt_outlined,),
                            Text("Trailer",)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Inspired by true events,'Operation Valentine' follows legendary fighter pilot Wing Commander Arjun Dev and randar controller Wing Commander Ahana Gill as they navigate one of the most instense aerial battles in history.",style: TextStyle(fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Action . Drama"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("IMDb 5.2"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("2024 130 min"),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 30,
                        width: 55,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(child: Text("U/A 13+",style: TextStyle(fontSize: 12))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 30,
                        width: 22,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(child: Icon(Icons.file_download_outlined,size: 15,)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 30,
                        width: 55,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(child: Text("4K UHD",style: TextStyle(fontSize: 12),)),
                      ),
                    ),
                  ],

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Languages",),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Audio (4), Subtitle (1)",style: TextStyle(color: Colors.grey,),),
                ),

                SizedBox(height: 30,),

                Column(
                  children:[
                    TabBar(
                      tabs: [
                        Text("Related"),
                        Text("Related"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
