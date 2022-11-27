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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://avatars.githubusercontent.com/u/47054275?v=4"),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "Wa'el Al Qawasmi",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      width: 250,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "355",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Text(
                              "POSTS",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "483",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Text(
                              "Followers",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1989",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Text(
                              "Following",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],),
                    )

                  ],
                ),
                Container(alignment: Alignment.topLeft,
                  child: Text("This is my profile, welcome to you in my profile"),),
                ElevatedButton(onPressed: (){}, child: Text("Edit Profile"),style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(30),),)
              ],
            ),
          ),
          Wrap(
            alignment: WrapAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(

                        // border: Border.all(width: 5,color: Colors.white)white

                        ),
                    child: Image(
                        image: AssetImage("assest/img/IMG.jpg"), width: 125)),
              ),
              Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(

                      // border: Border.all(width: 5,color: Colors.white)white

                      ),
                  child: Image(
                      image: AssetImage("assest/img/IMG.jpg"), width: 125)),
              Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(

                      // border: Border.all(width: 5,color: Colors.white)white

                      ),
                  child: Image(
                      image: AssetImage("assest/img/IMG.jpg"), width: 125)),
              Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(

                      // border: Border.all(width: 5,color: Colors.white)white

                      ),
                  child: Image(
                      image: AssetImage("assest/img/IMG.jpg"), width: 125)),
              Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(

                      // border: Border.all(width: 5,color: Colors.white)white

                      ),
                  child: Image(
                      image: AssetImage("assest/img/IMG.jpg"), width: 125)),
              Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(

                      // border: Border.all(width: 5,color: Colors.white)white

                      ),
                  child: Image(
                      image: AssetImage("assest/img/IMG.jpg"), width: 125)),
            ],
          ),
        ],
      ),
    );
  }
}
