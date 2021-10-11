import 'package:flutter/material.dart';

var listImages = <String>[
  'assets/images/image_1.jpeg',
  'assets/images/image_2.jpg',
  'assets/images/image_3.png',
  'assets/images/image_4.jpg',
  'assets/images/image_5.jpg'
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[900],
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            width: 36,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.orange[400],
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text("7"),
            ),
          )
        ],
        backgroundColor: Colors.orange.shade900,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.white),
        centerTitle: true,
        title:
            const Text('Apple Products', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          Container(
            height: 230,
            margin: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
              bottom: 30,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('assets/images/image_4.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Lifestyle sale',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: listImages.map((e) => product(e)).toList(),
          )
        ],
      ),
    );
  }

  Widget product(String image) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          height: 370,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const Positioned(
          top: 30,
          right: 35,
          child: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
        )
      ],
    );
  }
}
