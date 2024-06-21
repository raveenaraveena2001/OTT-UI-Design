
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/settings.dart';
import 'package:untitled/vdplay.dart';



class carouselnaviprime extends StatefulWidget {
  const carouselnaviprime({super.key});

  @override
  State<carouselnaviprime> createState() => _carouselnaviprimeState();
}

class _carouselnaviprimeState extends State<carouselnaviprime> {

  int currentIndex = 0;
  final List<String> image= [
    "https://m.media-amazon.com/images/S/pv-target-images/e527225f0bd17b6e5277d5ba7131def82f03f96264272aa0a9fda3a940f5833c.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/b48074bcf46c3054f3d9563c21069cf98a367b4c6212b8e855a1ce8b72999d4a.png",
    "https://m.media-amazon.com/images/S/sonata-images-prod/US_SVOD_Musica_RudyCamilaPark/2d706aa7-559c-4cd7-b1c5-3f0b08ec9e7c._UR1920,1080_SX1440_FMjpg_.jpeg",
    "https://static.moviecrow.com/marquee/rebel-review---pointlessly-political-yet-passable/227453_thumb_565.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/fbaddc891107a19ab0b50f5e851ebc76205a5f66af915eedeac453e39c97e7e4.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/9c2e14f51bf06cc2865ed353bfee25eb8a8479816ffc68f7ab4f85677d46d46f.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/b715c7c90115db08a121773ff2b4f7f186be288e5342955c113fbea0155b6601._UR1920,1080_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/c70e0e1682717ae19a3c23326cf686a75b6ea12e14de7e774109515213543e25.jpg"
  ];
  final List<String> image1= [
    "https://m.media-amazon.com/images/S/sonata-images-prod/US_SVOD_Musica_RudyCamilaPark/2d706aa7-559c-4cd7-b1c5-3f0b08ec9e7c._UR1920,1080_SX1440_FMjpg_.jpeg",
    "https://m.media-amazon.com/images/S/pv-target-images/e527225f0bd17b6e5277d5ba7131def82f03f96264272aa0a9fda3a940f5833c.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/b48074bcf46c3054f3d9563c21069cf98a367b4c6212b8e855a1ce8b72999d4a.png",
    "https://static.moviecrow.com/marquee/rebel-review---pointlessly-political-yet-passable/227453_thumb_565.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/b715c7c90115db08a121773ff2b4f7f186be288e5342955c113fbea0155b6601._UR1920,1080_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/fbaddc891107a19ab0b50f5e851ebc76205a5f66af915eedeac453e39c97e7e4.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/9c2e14f51bf06cc2865ed353bfee25eb8a8479816ffc68f7ab4f85677d46d46f.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/e527225f0bd17b6e5277d5ba7131def82f03f96264272aa0a9fda3a940f5833c.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/b48074bcf46c3054f3d9563c21069cf98a367b4c6212b8e855a1ce8b72999d4a.png",
    "https://m.media-amazon.com/images/S/sonata-images-prod/US_SVOD_Musica_RudyCamilaPark/2d706aa7-559c-4cd7-b1c5-3f0b08ec9e7c._UR1920,1080_SX1440_FMjpg_.jpeg",
    "https://www.comingsoon.net/wp-content/uploads/sites/3/2024/03/CS-images-2024-03-12T161400.738.png",
    "https://static.moviecrow.com/marquee/rebel-review---pointlessly-political-yet-passable/227453_thumb_565.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/b715c7c90115db08a121773ff2b4f7f186be288e5342955c113fbea0155b6601._UR1920,1080_.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/fbaddc891107a19ab0b50f5e851ebc76205a5f66af915eedeac453e39c97e7e4.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/9c2e14f51bf06cc2865ed353bfee25eb8a8479816ffc68f7ab4f85677d46d46f.jpg",
  ];

  final List<String> image2= [
    "https://m.media-amazon.com/images/M/MV5BMzA5ZWRlZTQtOTgzOS00MGJiLTliOTgtY2RmYzUwZjQ3OTZiL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMjYwMDk5NjE@._V1_QL75_UX140_CR0,10,140,140_.jpg",
    "https://m.media-amazon.com/images/M/MV5BODkzOTlkMGItYmFhNi00ZWZjLWJmYWQtY2M4MjA4YjUzM2NmXkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_.jpg",
    "https://images.mubicdn.net/images/cast_member/694966/cache-420604-1552957991/image-w856.jpg",
    "https://m.media-amazon.com/images/M/MV5BYjFmZTg2ZjEtMzg4YS00ZGQxLWIwZjUtNzUzZDZjMzNjNzhkXkEyXkFqcGdeQXVyMzYxOTQ3MDg@._V1_QL75_UX140_CR0,0,140,140_.jpg",
    "https://m.media-amazon.com/images/M/MV5BNWEwNGVlOWUtNDM5NS00YWY1LTllZjQtOGU0NjUxZWRlNmE0XkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_.jpg",
    "https://m.media-amazon.com/images/M/MV5BYjdiMzNlZTktMjE5Yy00ZmJmLWFlYzgtYmMzOWQ2NjMyMmYwXkEyXkFqcGdeQXVyODMyODMxNDY@._V1_.jpg"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 220),
            child: Icon(Icons.cast,size: 25,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              height: 40,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  settings()));
                },
                child: Icon(Icons.account_circle,color: Colors.deepOrange.shade400,size: 40,),
              ),
            ),
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
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.verified,color: Colors.indigoAccent,size: 15,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Included with prime",style: TextStyle(fontSize: 15,),),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => vdplay()),);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.play_arrow,color: Colors.white,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Play",style: TextStyle(fontSize: 17,color: Colors.white),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.file_download_outlined,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Download",style: TextStyle(fontSize: 17,),),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              children: [
                                Icon(Icons.video_collection_outlined),
                                Text("Trailer"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60.0),
                            child: Column(
                              children: [
                                Icon(Icons.add,),
                                Text("Wishlist",)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60.0),
                            child: Column(
                              children: [
                                Icon(Icons.thumb_up_alt_outlined,),
                                Text("Like",)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60.0),
                            child: Column(
                              children: [
                                Icon(Icons.thumb_down_alt_outlined,),
                                Text("Not for me",)
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
                            child: Center(child: Text("U/A 13+",style: TextStyle(fontSize: 12),)),
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
                            child: Center(child: Text("4K UHD",style: TextStyle(fontSize: 12,),)),
                          ),
                        ),
                      ],
                        
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Languages",style: TextStyle(color: Colors.blue,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Audio (4), Subtitle (1)",style: TextStyle(color: Colors.grey,),),
                    ),

                    SizedBox(height: 30,),

                    Container(
                  child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(text: "Related"),
                      Tab(text: "More Details"),
                    ],
                  ),
                ),

                  ],
                ),
              ),
              ),

            ),
      );
  }
}

