
import 'package:flutter/material.dart';
import 'package:flutter_taskes/secreens/chat.dart';

class instaBar extends StatelessWidget implements PreferredSizeWidget {
   instaBar({
    Key? key,required this.IsHaveBack
  }) : super(key: key);
var IsHaveBack;
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(

      leading:leading(context,IsHaveBack),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return chat();
            }));
          },
          icon: Icon(Icons.message_sharp),
          color: Colors.black87,
        )
      ],


      backgroundColor: Colors.white,
      title: Text(
        "instagrame 8t",
        style:
        TextStyle(fontFamily: 'FreehandRegular', color: Colors.black87),
      ),
    );
  }
  @override
  Widget? leading(context,IsHaveBack){
    if(IsHaveBack)
    return IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black87,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    else
      return null;
  }
}