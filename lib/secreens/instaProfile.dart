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
          icon: Icon(Icons.arrow_back,color: Colors.black87,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),

        backgroundColor: Colors.white,
        title: Text(
          "instagrame 8t",
          style:
          TextStyle(fontFamily: 'FreehandRegular', color: Colors.black87),
        ),
      )
    );
  }
}
