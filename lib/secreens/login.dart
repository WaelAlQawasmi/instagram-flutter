import 'package:flutter/material.dart';
import 'package:flutter_taskes/secreens/Signup.dart';
import 'package:flutter_taskes/secreens/instaHomePage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var error= false;
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Color(0Xffff4874),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 600,
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assest/img/instalogo.png"),
                width: 200,
              ),
              Container(
                constraints: BoxConstraints(minWidth: 350, maxWidth: 370),
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.verified_user_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: "Email"),
                ),
              ),
              Container(
                constraints: BoxConstraints(minWidth: 350, maxWidth: 370),
                margin: EdgeInsets.all(15),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
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
                    if (username.text == "wael" && password.text == "123456") {
                      Navigator.pushReplacementNamed(context, "InstaHome");
                    }
                    else{
                      setState(() {
                        error=true;
                      });
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Color(0Xffff4874)),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                width: .5, color: Color(0Xffff4874)))),
                  ),
                ),
              ),
              Divider(
                color: Colors.black12,
              ),

              Visibility(
                  visible: error,
                  child: Text(
                    " username or password error !",
                    style: TextStyle(color: Colors.red),
                  ))

          ,
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 400,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Signup();
                      }));
                    },
                    child: Text(
                      "New user?, signup",
                      style: TextStyle(color: Color(0Xffff4874)),
                    ),
                    style: ButtonStyle(
                      // overlayColor: MaterialStateColor.resolveWith((states) => Color(0XFFFCE4EC),)
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
