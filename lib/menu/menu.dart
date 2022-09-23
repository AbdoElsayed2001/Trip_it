import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_it/locations/convex.dart';
import 'package:trip_it/locations/location.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          ElevatedButton(child: Image.asset("assets/close.png",),onPressed: () {Navigator.push(
            context, MaterialPageRoute(builder:((context){
            return Convex();
          }
          ),
          ),
          );},
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),elevation: MaterialStateProperty.all(0)),),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CircleAvatar(
            radius: 50,
            child: Image.asset("assets/person.png",fit: BoxFit.fill,),
          ),
          const SizedBox(height: 16,),
          Center(child: Text("Kenneth Gutierrez",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)),
          const SizedBox(height: 8,),
          Center(child: Text("kenneth_gutierrez@gmail.com",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.3)),)),
          Padding(
            padding: const EdgeInsets.all(16.0),
             child : Image.asset("assets/Notification.png"),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                Image.asset("assets/Tours.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child : Image.asset("assets/Location.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
            Image.asset("assets/Language.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8 , left: 16,right: 16,top: 16),
            child : Image.asset("assets/Invite Friends.png"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(
              thickness: 1,
              color: Color(0xFFE3E3E3),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16 , left: 16,right: 16,top: 8),
            child : Image.asset("assets/Help Center.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
            Image.asset("assets/Setting.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child : Image.asset("assets/Log Out.png"),
          ),
        ],
      ),
    );
  }
}
