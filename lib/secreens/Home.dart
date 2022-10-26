import 'package:flutter/material.dart';
import 'package:flutter_taskes/secreens/instaHomePage.dart';
import 'package:flutter_taskes/secreens/login.dart';
import 'package:flutter_taskes/secreens/task1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        centerTitle: true,
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green
              ),
              accountName: Text("WAEL"),
              accountEmail: Text("w@example.com"),
            ),
            TaskNavagertor(context, "Task1", task1()),

            TaskNavagertor(context, "Login", Login()),

            TaskNavagertor(context, "instaProfil", instaHomePage())
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome to taskes app",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.star)],
            ),
            Image.network(
                "https://merriam-webster.com/assets/mw/images/article/art-wap-article-main/can-task-be-a-verb-5813-7075c71d8cf734c3c83e9edf76bc66fb@1x.jpg",fit: BoxFit.cover,)
          ],
        ),
      ),
    );
  }

  ListTile TaskNavagertor(
      BuildContext context, String taskName, var taskClass) {
    return ListTile(
      title: Text(taskName),
      leading: Icon(Icons.task),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return taskClass;
        }));
      },
    );
  }
}