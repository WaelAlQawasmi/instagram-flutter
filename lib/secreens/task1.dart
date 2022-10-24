import 'package:flutter/material.dart';

class task1 extends StatelessWidget {
  const task1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        color: Colors.white30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: Text(
                "Strawberry Pavlova Recipe",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),
              ),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.black87, width: 2)),
              width: double.maxFinite,
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text(
                "Pavlova is a meringue-based dessert named after the Russian ballerina Ann Pavlova.Pavlova features a crisp crust andsoft,light inside,topped with fruit andwhipped cream",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Container(
                        child: Text(
                          "17 review",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            size: 40,
                            Icons.restaurant_sharp,
                            color: Colors.green,
                          ),
                          Text("Feed"),
                          Text("2 - 4"),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            size: 40,
                            Icons.local_drink,
                            color: Colors.green,
                          ),
                          Text("Feed"),
                          Text("2 - 4"),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            size: 40,
                            Icons.coffee,
                            color: Colors.green,
                          ),
                          Text("Feed"),
                          Text("2 - 4"),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(border: Border.all()),
            )
          ],
        ),
      ),
    );
  }
}
