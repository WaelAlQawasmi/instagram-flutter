import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var accountType = ['user', 'company', 'developer'];
  var selectedAcount;

  @override
  Widget build(BuildContext context) {
    ;
    return Scaffold(
      appBar: AppBar(
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
              margin: EdgeInsets.symmetric(horizontal: 20),
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
            )
          ],
        ),
      ),
    );
  }
}
