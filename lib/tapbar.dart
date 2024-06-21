import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class CarouselNaviPrime extends StatefulWidget {
  @override
  _CarouselNaviPrimeState createState() => _CarouselNaviPrimeState();
}

class _CarouselNaviPrimeState extends State<CarouselNaviPrime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Viewer'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.cast),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.account_circle, color: Colors.orange.shade700, size: 40),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Here I've just added a placeholder for an image. Replace with NetworkImage if you have URLs.
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/placeholder.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Operation Valentine", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Icon(Icons.verified, color: Colors.indigoAccent, size: 15),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Included with prime", style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.all(8.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: TextButton.icon(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => VideoPlayPage()));
                  },
                  icon: Icon(Icons.play_arrow, color: Colors.white),
                  label: Text("Play", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.all(8.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.file_download, color: Colors.white),
                  label: Text("Download", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            // Additional interactive areas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildActionIcon(Icons.video_collection, "Trailer"),
                _buildActionIcon(Icons.add, "Wishlist"),
                _buildActionIcon(Icons.thumb_up, "Like"),
                _buildActionIcon(Icons.thumb_down, "Not for me"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Inspired by true events, 'Operation Valentine' follows legendary fighter pilot Wing Commander Arjun Dev and radar controller Wing Commander Ahana Gill as they navigate one of the most intense aerial battles in history.", style: TextStyle(fontSize: 15)),
            ),
            // Additional text areas
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
          ],
        ),
      ),
    );
  }

  Widget _buildActionIcon(IconData icon, String text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon),
        Text(text),
      ],
    );
  }
}
