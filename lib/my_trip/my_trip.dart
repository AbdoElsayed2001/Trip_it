import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../menu/menu.dart';

class My_Trip extends StatelessWidget {
  const My_Trip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: ElevatedButton(child: Image.asset("assets/Side Manu Arrow.png",),onPressed: (){
          Navigator.push(
            context, MaterialPageRoute(builder:((context){
            return Menu();
          }
          )
          ),
          );
        },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),elevation: MaterialStateProperty.all(0)),),
        title: Text("My Trip",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 22),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("assets/searching-magnifying-glass-1.png",width: 14,height: 14,),
          )
        ],
      ),
      body: Center(child: Text("No Tripes")),
    );
  }
}
