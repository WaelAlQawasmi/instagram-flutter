import 'package:flutter/material.dart';
import 'package:flutter_taskes/secreens/chat.dart';
import 'package:flutter_taskes/secreens/instaBar.dart';
import 'package:flutter_taskes/secreens/instaProfile.dart';

class instaHomePage extends StatefulWidget {
  const instaHomePage({Key? key}) : super(key: key);

  @override
  State<instaHomePage> createState() => _instaHomePageState();
}

class _instaHomePageState extends State<instaHomePage> {
  int selectedBarItem=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black87,
        currentIndex: selectedBarItem,
        onTap: (index){
          setState(() {
            selectedBarItem=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "", ) ,
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection),label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: ""),
          BottomNavigationBarItem(icon: IconButton(
            onPressed: (){  Navigator.push(context, MaterialPageRoute(builder: (context) {
              return instaProfile();
            }));
              },
            icon:Image.asset("assest/img/instalogo.png",),
            color: Colors.black87,

          ),label: "home"),

        ],

      ),
      appBar: instaBar(IsHaveBack: false,),
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
              IconButton(onPressed: (){}, icon:  Icon(Icons.favorite_border_outlined),splashColor: Colors.red,),
              IconButton(onPressed: (){}, icon:  Icon(Icons.chat_bubble_outline) ,splashColor: Colors.red ),
              IconButton(onPressed: (){}, icon:  Icon(Icons.share_outlined) ,splashColor: Colors.red),

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

