import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../menu/menu.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
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
        title: Text("LOCATION",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 22),),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16,top: 8,left: 16,bottom: 16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              height: 130,
              width: 335,
              child: Stack(
                children: [
                  Center(child: Image.asset("assets/usa.png",width: 335,)),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("USA",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                          Text("New York",style: TextStyle(color: Colors.white,fontSize: 22,)),
                          const SizedBox(height: 16,)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              height: 130,
              width: 335,
              child: Stack(
                children: [
                  Center(child: Image.asset("assets/france.png",width: 335,)),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("France",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                          Text("Paris",style: TextStyle(color: Colors.white,fontSize: 22,)),
                          const SizedBox(height: 16,)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              height: 130,
              width: 335,
              child: Stack(
                children: [
                  Center(child: Image.asset("assets/india.png",width: 335,)),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("India",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                          Text("Agra",style: TextStyle(color: Colors.white,fontSize: 22,)),
                          const SizedBox(height: 16,)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
             // margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              height: 130,
              width: 335,
              child: Stack(
                children: [
                  Center(child: Image.asset("assets/london.png",width: 335,)),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("England",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                          Text("London",style: TextStyle(color: Colors.white,fontSize: 22,)),
                          const SizedBox(height: 16,)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              height: 130,
              width: 335,
              child: Stack(
                children: [
                  Center(child: Image.asset("assets/australia.png",width: 335,)),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Australia",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                          Text("Sydney",style: TextStyle(color: Colors.white,fontSize: 22,)),
                          const SizedBox(height: 16,)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16,),
        ],
      )
    );
  }
}
