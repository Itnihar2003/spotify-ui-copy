import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:todoapp/page2.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  List<String> image1 = [
    "assert/image/th (0).png",
    "assert/image/th (1).png",
    "assert/image/th (2).png",
    "assert/image/th (3).png",
    "assert/image/th (4).png",
  ];
  List text1 = [
    "song1",
    "song1",
    "song1",
    "song1",
    "song1",
  ];

  List image2 = [
    "assert/image/th (5).png",
    "assert/image/th (6).png",
    "assert/image/th (7).png",
    "assert/image/th (8).png",
    "assert/image/th (9).png",
  ];
  List image3 = [
    "assert/image/th (10).png",
    "assert/image/th (11).png",
    "assert/image/th (12).png",
    "assert/image/th (13).png",
    "assert/image/th (14).png"
  ];
  List image4 = [
    "assert/image/th (15).png",
    "assert/image/th (16).png",
    "assert/image/th (17).png",
    "assert/image/th (5).png",
    "assert/image/th (6).png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle_rounded,
              color: Colors.blue,
              size: 35,
            )),
        title: const Text(
          "Good morning",
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.electric_bolt,
              color: Colors.white,
              size: 35,
            ),
          )
        ],
        backgroundColor: Color.fromARGB(255, 9, 9, 9),
      ),
      backgroundColor: Color.fromARGB(255, 11, 11, 11),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                      height: 33,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 42, 42, 42),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        "Music",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                      height: 33,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 42, 42, 42),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        "Podcasts & Shows",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ))),
                )
              ]),
              Column(
                children: [
                  Row(
                    children: [
                      ShowBox(image: image3[4], text: text1[0]),
                      ShowBox(image: image4[2], text: text1[0])
                    ],
                  ),
                  Row(
                    children: [
                      ShowBox(image: image3[1], text: text1[0]),
                      ShowBox(image: image4[0], text: text1[0])
                    ],
                  ),
                  Row(
                    children: [
                      ShowBox(image: image2[4], text: text1[0]),
                      ShowBox(image: image3[2], text: text1[0])
                    ],
                  ),
                ],
              ),
              RowArrange(listname: image1, imagename: text1),
              RowArrange(listname: image2, imagename: text1)
            ],
          ),
        ),
      ),
    );
  }
}

class ShowBox extends StatelessWidget {
  const ShowBox({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page2(),
          ),
        );
      },
      child: Container(
        height: 60,
        width: 155,
        color: Color.fromARGB(255, 55, 54, 54),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 60,
              width: 80,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RowArrange extends StatelessWidget {
  const RowArrange({
    super.key,
    required this.listname,
    required this.imagename,
  });
  final List listname;
  final List imagename;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listname.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(listname[index].toString());
        },
      ),
    );
  }
}




























      //             GButton(icon:Icons.search,iconColor: Colors.white,text:"Search" ,textColor: Colors.white,onPressed: (){ Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) =>const page2(),
      //                     ));}, ), GButton(icon:Icons.library_music_rounded,iconColor: Colors.white,text:"Your Library" ,textColor: Colors.white,onPressed: (){ Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) =>const page2(),
      //                     ));}, ), GButton(icon:Icons.add_circle_rounded,iconColor: Colors.white,text:"Premium" ,textColor: Colors.white,onPressed: (){ Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) =>const page2(),
      //                     ));}, )
      //           ]),
      

      
   