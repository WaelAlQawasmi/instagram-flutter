import 'package:flutter/material.dart';
import 'package:flutter_taskes/secreens/instaBar.dart';

class chat extends StatefulWidget {
  chat({Key? key}) : super(key: key);

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  List<String> users = [
    "Ahmad",
    "elon",
    "yazan",
    "narendra",
    "Ahmad",
    "elon",
    "yazan",
    "narendra"
  ];
  List<String> images = [
    "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOOFMe-CzzMAgkPdsGK1wsKLtoF33HXGK98A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnOJSJ5m8I2gpkUe78w0AiXpaIAYtz_hOZEQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThS_4nKcQwHrW8QrFg7b-6EyReOU4dEFPlQw&usqp=CAU",
    "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOOFMe-CzzMAgkPdsGK1wsKLtoF33HXGK98A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnOJSJ5m8I2gpkUe78w0AiXpaIAYtz_hOZEQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThS_4nKcQwHrW8QrFg7b-6EyReOU4dEFPlQw&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: instaBar(
        IsHaveBack: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container( color: Colors.white,
                  height: 40,
         margin: EdgeInsets.all(10),child: TextFormField(
              decoration: InputDecoration(
                 contentPadding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 15.0),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",

                  border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(20),borderSide: BorderSide(width: .1)),),
            ),
          ),
          Container(
            height: 550,
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Card(
                    child: ListTile(
                  title: Text(users[index]),
                  subtitle: Text("last seen  12h ago"),
                  trailing: Icon(Icons.camera_alt),
                  leading:
                      CircleAvatar(backgroundImage: NetworkImage(images[index])),
                ));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
