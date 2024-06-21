import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'prime1.dart';
import 'settings.dart';
import 'Carouselnaviprime.dart';
import 'movie.dart';


class tvshows extends StatefulWidget {
  const tvshows({super.key});

  @override
  State<tvshows> createState() => _tvshowsState();
}

class _tvshowsState extends State<tvshows> {

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

  final vdcontroll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(


      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("TV Shows",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                  child: Icon(Icons.search,size: 30,),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          //color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const prime1()),);
                            },
                            child: Center(child: Text("All", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const movie()),);
                            },
                            child: Center(child: Text("Movies", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const tvshows()),);
                            },
                            child: Center(child: Text("Tv shows", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Container(
                  height: 260,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const carouselnaviprime()),);
                    },
                    child: CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 290,
                          aspectRatio: 16/9,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,

                          // onPageChanged: callbackFunction,
                          scrollDirection: Axis.horizontal,
                        ),
                        itemCount: image.length,
                        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                          return Container(
                            height: 250,
                            //width: 600,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(image[itemIndex]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                ),
                Center(
                  child: DotsIndicator(
                    dotsCount: image.length,
                    position: currentIndex,
                  ),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Continue Watching",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                      SizedBox(height: 5),
                      Container(
                        height: 130,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: image.length,
                            itemBuilder: (BuildContext con,index)
                            {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 110,
                                  width:230,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      image: DecorationImage(
                                          image: NetworkImage(image1[index]),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children: [
                            Text("Prime",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),),
                            Text(" - Amazon Original series > ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                          ]
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 250,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: image.length,
                            itemBuilder: (BuildContext con,index)
                            {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 230,
                                  width:200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      image: DecorationImage(
                                        image: NetworkImage(image[index]),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Rent New Movies >",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.yellow.shade700),),
                      SizedBox(height: 5),
                      Container(
                        height: 130,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: image.length,
                            itemBuilder: (BuildContext con,index)
                            {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 110,
                                  width:230,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      image: DecorationImage(
                                          image: NetworkImage(image1[index]),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Top 10 in India",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),),
                      SizedBox(height: 5),
                      Container(
                        height: 130,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: image.length,
                            itemBuilder: (BuildContext con,index)
                            {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 110,
                                  width:230,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      image: DecorationImage(
                                          image: NetworkImage(image[index]),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("My subscription",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                      SizedBox(height: 5),
                      Container(
                        height: 130,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: image.length,
                            itemBuilder: (BuildContext con,index)
                            {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 110,
                                  width:230,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      image: DecorationImage(
                                          image: NetworkImage(image1[index]),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Prime",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),),
                          Text(" - Recommended movies",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 130,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: image.length,
                            itemBuilder: (BuildContext con,index)
                            {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 110,
                                  width:230,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      image: DecorationImage(
                                          image: NetworkImage(image[index]),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
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
