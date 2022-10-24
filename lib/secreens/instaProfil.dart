import 'package:flutter/material.dart';

class instaProfil extends StatefulWidget {
  const instaProfil({Key? key}) : super(key: key);

  @override
  State<instaProfil> createState() => _instaProfilState();
}

class _instaProfilState extends State<instaProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
            color: Colors.black87,
          )
        ],
        backgroundColor: Colors.white,
        title: Text(
          "instagrame 8t",
          style:
              TextStyle(fontFamily: 'FreehandRegular', color: Colors.black87),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    story("assest/img/IMG1.jpg"),
                    story("assest/img/IMG2.jpg"),
                    story("assest/img/IMG.jpg"),
                    story("assest/img/IMG1.jpg"),
                    story("assest/img/IMG.jpg"),
                    story("assest/img/IMG2.jpg"),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Post("assest/img/IMG2.jpg"),
                    Post("assest/img/IMG.jpg"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // ////////////////////////////post methode //////////////////////////////
  Container Post(String ImgUrl) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 350,
      height: 300,
      decoration: BoxDecoration(border: Border.all(width: 0)),
      child: Column(
        children: [
          Image.asset(
            ImgUrl,
            width: 290,
            height: 250,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.favorite_border_outlined),
              Icon(Icons.chat_bubble_outline),
              Icon(Icons.share_outlined),
            ],
          )
        ],
      ),
    );
  }

  // story method

  Container story(String imgUrl) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 75,
      height: 75,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.fill),
          border: Border.all(width: 2, color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(50))),
    );
  }
}
