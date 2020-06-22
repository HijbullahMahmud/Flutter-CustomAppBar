import 'package:flutter/material.dart';

class GradientAppBar extends StatefulWidget {
  @override
  _GradientAppBarState createState() => _GradientAppBarState();
}

class _GradientAppBarState extends State<GradientAppBar> {
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
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue,
                  Colors.lightBlueAccent
                ]
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0)),
            boxShadow: [BoxShadow(
              color: Colors.black,
              blurRadius: 50.0,)
            ],

           ),
        height: divHeight / 2 * 0.3,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.menu, color: Colors.white, size: 30, ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text("App Name", style: TextStyle(color: Colors.white, fontSize: 25),),
                      )
                    ],
                  ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 10.0),
              child: Icon(Icons.account_circle, color: Colors.white, size: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 10.0),
              child: Icon(Icons.account_balance_wallet, color: Colors.white, size: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 10.0),
              child: Icon(Icons.settings, color: Colors.white, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}