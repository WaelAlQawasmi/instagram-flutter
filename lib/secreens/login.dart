import 'package:flutter/material.dart';
import 'package:flutter_taskes/secreens/instaHomePage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Color(0Xffff4874),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("assest/img/instalogo.png"),
            width: 200,
          ),
          Container(
            constraints: BoxConstraints(minWidth: 350, maxWidth: 400),
            margin: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.verified_user_outlined),
                  border: OutlineInputBorder(),
                  hintText: "Email"),
            ),
          ),
          Container(
            constraints: BoxConstraints(minWidth: 350, maxWidth: 400),
            margin: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                  hintText: "password"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text("forget password",
                style: TextStyle(
                  color: Color(0Xffff4874),
                )),
          ),
          Container(
            width: 150,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return instaHomePage();
                }));
              },
              child: Text(
                "Login",
                style: TextStyle(color: Color(0Xffff4874)),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(width: .5, color: Color(0Xffff4874)))),
              ),
            ),
          ),
          Divider(
            color: Colors.black12,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: 400,
              child: Text("New account"),
            ),
          )
        ],
      ),
    );
  }
}
