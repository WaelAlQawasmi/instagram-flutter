import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var accountType = ['user', 'company', 'developer'];
  var selectedAcount;
  bool isAccerpt = true;
  var gender;

  @override
  Widget build(BuildContext context) {
    ;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0Xffff4874),
        title: Text("Signup"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black26)),
              margin: EdgeInsets.all(20),
              child: DropdownButton(
                underline: Divider(
                  color: Colors.transparent,
                ),
                isExpanded: true,
                icon: Icon(Icons.type_specimen_sharp),
                hint: Text("please select account "),
                items: accountType
                    .map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    selectedAcount = val;
                  });
                  //
                  print(selectedAcount);
                },
                value: selectedAcount,
              ),
            ),
            Container(
              child: CheckboxListTile(
                selected: isAccerpt,
                isThreeLine: true,
                activeColor: Color(0Xffff4874),
                checkColor: Colors.white,
                title: Text("Accept Terms "),
                subtitle: Text("you acceept the tarms"),
                value: isAccerpt,
                onChanged: (vale) {
                  setState(() {
                    isAccerpt = vale!;
                  });
                },
              ),
            ),
            Row(children: [
              Expanded(
                child: Container(
                    child: RadioListTile(
                        value: "male",
                        groupValue: gender,
                        title: Text("male"),
                        onChanged: (val) {
                          setState(() {
                            gender = val;
                          });
                        })),
              ),
              Expanded(
                child: Container(
                    child: RadioListTile(
                        value: "F-male",
                        groupValue: gender,
                        title: Text("F-male"),
                        onChanged: (val) {
                          setState(() {
                            gender = val;
                          });
                        })),
              ),
            ]),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: Color(0Xffff4874),
                  borderRadius: BorderRadius.circular(20)),
              child: GestureDetector(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onLongPress: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      actions: [
                        OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0Xffff4874),
                          primary: Colors.white
                        ),child: Text("OK",)),
                        ElevatedButton(onPressed: (){}, child: Text("Cancel"))
                      ],
                      actionsPadding: EdgeInsets.all(10),
                      title: Text("signed up"),
                      content: Text(
                          "You already signed up!"),
                    );
                  });
                }
                ,
                onTap: () {
                  final snackBar = SnackBar(
                      backgroundColor: Colors.black26,
                      content: Text("Successfully signed up!"),
                      duration: Duration(seconds: 5),
                      action: SnackBarAction(
                        label: "un do",
                        onPressed: () {},
                      ),
                      behavior: SnackBarBehavior.floating);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
