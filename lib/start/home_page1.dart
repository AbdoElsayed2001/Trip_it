import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Page_view1.dart';


class Home_page1 extends StatefulWidget {
  const Home_page1({Key? key}) : super(key: key);

  @override
  State<Home_page1> createState() => _Home_page1State();
}

class _Home_page1State extends State<Home_page1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Test();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment(0.8, 2),
          colors: [
            Color(0xff4458DB),
            Color(0xffB444DB),
          ],
        ),
      ),
      child: Center(
          child: Container(
              child: Image.asset(
                'assets/Logo Color.png',
                width: 600,
                height: 600,
              )),
      ),
    ));

  }
  void Test(){
    Timer(Duration(seconds: 2),
        (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Page_View1()),
          );
        }
    );
  }
}
