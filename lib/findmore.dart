import 'package:flutter/material.dart';

class findmore extends StatefulWidget {
  const findmore({super.key});

  @override
  State<findmore> createState() => _findmoreState();
}

class _findmoreState extends State<findmore> {

  int currentIndex = 0;
  final List<String> image= [
    "https://m.media-amazon.com/images/S/pv-target-images/e527225f0bd17b6e5277d5ba7131def82f03f96264272aa0a9fda3a940f5833c.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/b48074bcf46c3054f3d9563c21069cf98a367b4c6212b8e855a1ce8b72999d4a.png",
    "https://m.media-amazon.com/images/S/sonata-images-prod/US_SVOD_Musica_RudyCamilaPark/2d706aa7-559c-4cd7-b1c5-3f0b08ec9e7c._UR1920,1080_SX1440_FMjpg_.jpeg",
    "https://www.comingsoon.net/wp-content/uploads/sites/3/2024/03/CS-images-2024-03-12T161400.738.png",
    "https://static.moviecrow.com/marquee/rebel-review---pointlessly-political-yet-passable/227453_thumb_565.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/fbaddc891107a19ab0b50f5e851ebc76205a5f66af915eedeac453e39c97e7e4.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/9c2e14f51bf06cc2865ed353bfee25eb8a8479816ffc68f7ab4f85677d46d46f.jpg",
    "https://m.media-amazon.com/images/S/pv-target-images/b715c7c90115db08a121773ff2b4f7f186be288e5342955c113fbea0155b6601._UR1920,1080_.jpg",

  ];
  final List<String> image1= [

    "https://m.media-amazon.com/images/S/sonata-images-prod/US_SVOD_Musica_RudyCamilaPark/2d706aa7-559c-4cd7-b1c5-3f0b08ec9e7c._UR1920,1080_SX1440_FMjpg_.jpeg",
    "https://www.comingsoon.net/wp-content/uploads/sites/3/2024/03/CS-images-2024-03-12T161400.738.png",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        leading: Row(
          children: [
            Text("Find Videos to download",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 220),
            child: Icon(Icons.cast,size: 25,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Icon(Icons.account_circle,color: Colors.deepOrange.shade400,size: 40,),
          ),
        ],
      ),
      body: Container(
        //color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    Text("Continue Watching",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
                    SizedBox(height: 5),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: image.length,
                          itemBuilder: (BuildContext con,index)
                          {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 180,
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
                    Text("Continue Watching",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
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
                    Text("Continue Watching",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
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
                    Text("Continue Watching",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
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
    );
  }
}
