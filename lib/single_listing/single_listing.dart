import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Single_Listing extends StatelessWidget {
   Single_Listing({Key? key}) : super(key: key);
bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: Row(
          children: [
            const SizedBox(width: 5,),
          Image.asset("assets/next.png"),
          const SizedBox(width: 5,),
          Text("Back",style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.5)),)
        ],),
        title: Text("Paris",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 22),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("assets/searching-magnifying-glass-1.png",width: 14,height: 14,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
           Image.asset("assets/Mask  Image.png",),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 38,),
                Center(child: Text("Top 10 Favourite",style: TextStyle(color: Colors.white,fontSize: 30),)),
                const SizedBox(height: 6,),
                Center(child: Text("Destination In Paris",style: TextStyle(color: Colors.white,fontSize: 30),)),
                const SizedBox(height: 4,),
                Image.asset("assets/Images.png",width: 500,),
                Center(child: Text("Disneyland Paris",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 26),)),
                const SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Departure",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("23rd Oct 2017",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 12,),),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Duration",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("5 Days / 4  Nights",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 12,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0,right: 16,left: 16),
                  child: Text("Discover 7 World Heritage Sites in this                  tour.",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0,left: 16,bottom: 16),
                  child: Text("Fans of Mickey can visit Disneyland Paris which is located 32 km from central Paris, with connection to the suburban RER A.",maxLines: 2,style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 15,),),
                ),
                Padding(
                  padding: const EdgeInsets.only( top: 16.0,right: 16,left: 16),
                  child: Text("Disneyland Paris has two theme parks: Disneyland (with Sleeping Beauty's castle) and Walt Disney Studios. Top attractions are Space Mountain, It's a Small World and Big Thunder Mountain.",maxLines: 3,style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 15,),),
                ),
                Stack(
                  children: [
                    Card(
                      elevation: 0,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 28.0,left: 28,bottom: 28,top: 28),
                          child: Row(
                            children: [
                              Expanded(child: Center(child: Text("Overview",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff4458DB)),)),),
                              Expanded(child: Center(child: Text("Places",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.5),),)),),
                              Expanded(child: Center(child: Text("Itinerary",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.5),),)),),
                              Expanded(child: Center(child: Text("Review",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.5)),)),),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16,),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0,right: 8,top: 24,bottom: 32),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(text: "\$1,020",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),
                                      children: [
                                        TextSpan(
                                          text: " per person", style: TextStyle(fontSize: 12,color: Colors.black),
                                        ),
                                      ]
                                    ),
                                  ),
                                  const SizedBox(height: 12,),
                                  Image.asset("assets/Rating.png")
                                ],
                              ),
                              const SizedBox(width: 16,),
                              Image.asset("assets/Button.png",width: 115,height: 50,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                    Divider(
                      thickness: 1.5,
                      color: Color(0xff4458DB),
                      endIndent: 120,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

