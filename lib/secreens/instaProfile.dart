import 'package:flutter/material.dart';

class instaProfile extends StatefulWidget {
  const instaProfile({Key? key}) : super(key: key);

  @override
  State<instaProfile> createState() => _instaProfileState();
}

class _instaProfileState extends State<instaProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          "instagrame 8t",
          style:
              TextStyle(fontFamily: 'FreehandRegular', color: Colors.black87),
        ),
      ),
      body: Wrap(
        alignment: WrapAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                
                // border: Border.all(width: 5,color: Colors.white)white

              ),
                child:
                    Image(image: AssetImage("assest/img/IMG.jpg"), width: 125)),
          ),
          Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(

                // border: Border.all(width: 5,color: Colors.white)white

              ),
              child:
              Image(image: AssetImage("assest/img/IMG.jpg"), width: 125)),
          Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(

                // border: Border.all(width: 5,color: Colors.white)white

              ),
              child:
              Image(image: AssetImage("assest/img/IMG.jpg"), width: 125)),
          Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(

                // border: Border.all(width: 5,color: Colors.white)white

              ),
              child:
              Image(image: AssetImage("assest/img/IMG.jpg"), width: 125)),
          Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(

                // border: Border.all(width: 5,color: Colors.white)white

              ),
              child:
              Image(image: AssetImage("assest/img/IMG.jpg"), width: 125)),
          Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(

                // border: Border.all(width: 5,color: Colors.white)white

              ),
              child:
              Image(image: AssetImage("assest/img/IMG.jpg"), width: 125)),
           ],
      ),
    );
  }
}
