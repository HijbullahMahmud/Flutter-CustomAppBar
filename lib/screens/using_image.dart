import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /*get the screen size of the device*/
    var divHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0)),
            boxShadow: [BoxShadow(
              color: Colors.black,
              blurRadius: 50.0,)
          ],
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage("assets/img/banner.png"),
              fit: BoxFit.cover,
            )),
        height: divHeight / 2 * 0.3,
      ),
    );
  }
}
