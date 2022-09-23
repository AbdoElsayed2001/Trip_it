import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../menu/menu.dart';
import '../response/tour2Response.dart' as list;
import 'package:http/http.dart';

import '../response/tourResponse.dart';

class Tour extends StatefulWidget {
  Tour({Key? key,this.token}) : super(key: key);
  String? token;

  @override
  State<Tour> createState() => _TourState();
}

class _TourState extends State<Tour> {

  bool isLoading = false;
  TourResponse? tourResponseModel;
  list.Tour2Response? tour2responseModel;

  @override
  void initState() {
    super.initState();
    fetList();
    fetList2();
  }

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
          title: Text("Tours",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 22),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("assets/searching-magnifying-glass-1.png",width: 14,height: 14,),
            )
          ],
        ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text("Popular Destination",style: TextStyle(color: Color(0xff4458DB),fontWeight: FontWeight.bold,fontSize: 22),),
            ),
            const SizedBox(height: 4,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text("10 Tours Available",style: TextStyle(color: Color(0xff111111).withOpacity(0.5),fontWeight: FontWeight.bold,fontSize: 12),),
            ),
            const SizedBox(height: 24,),
            SizedBox(
              height: 90,
              width: double.infinity,
              child:
              isLoading ? Center(child: CircularProgressIndicator(),) :
              ListView.builder(
                itemBuilder: (context, index) {
                  Data item = tourResponseModel!.data!.data![index];
                  print(item);
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(item.data.toString()),
                    ),
                  );
                },
                itemCount: tourResponseModel!.data!.data!.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(height: 24,),
            Stack(
              children: <Widget>[
                Image.asset("assets/Image.png",fit: BoxFit.fill,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0,right: 32,top: 48,bottom: 4),
                      child: Text("SAVE up to 45% "),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                      child: Text("CATAMOUNT, HILLSDALE, NY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Color(0xff111111).withOpacity(0.7)),),
                    ),
                    SizedBox(
                      height: 136,
                      width: double.infinity,
                      child: ListView(

                          scrollDirection: Axis.horizontal,
                          children: [
                            Image.asset("assets/Offer.png"),
                            Image.asset("assets/Offer.png"),
                            Image.asset("assets/Offer.png"),
                          ]
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Discover New Places",style: TextStyle(color: Color(0xff4458DB),fontWeight: FontWeight.bold,fontSize: 22),),
            ),
            SizedBox(
              height: 311,
              width: double.infinity,
              child: isLoading ? Center(child: CircularProgressIndicator(),) : ListView.builder(
                        itemBuilder: (context, index) {
                          dynamic  item = tour2responseModel!.data!.images![index].image;
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Image.network(item.toString()),
                              ),
                            );
                          },
                          itemCount: tour2responseModel!.data!.images!.length,
                          scrollDirection: Axis.horizontal,
                         ),
              ),
            const SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }
  Future fetList() async{

    setState((){
      isLoading = true;
    });

    Response tourRseponse = await get(Uri.parse("http://alcaptin.com/api/places"),
      headers: {
        "Accept" : "application/json",
        "Authorization" : "Bearer ${widget.token}",
      },
    );
    dynamic convertedJson = jsonDecode(tourRseponse.body);

    setState((){
     tourResponseModel = TourResponse.fromJson(convertedJson);
    });

    setState((){
      isLoading = false;
    }
    );
  }

  Future fetList2() async{


    setState((){
      isLoading = true;
    });

    Response tour2Rseponse = await get(Uri.parse("http://alcaptin.com/api/places/2"),
      headers: {
        "Accept" : "application/json",
        "Authorization" : "Bearer ${widget.token}",
      },
    );
    dynamic convertedJson = jsonDecode(tour2Rseponse.body);

    setState((){
      tour2responseModel = list.Tour2Response.fromJson(convertedJson);
    });

    setState((){
      isLoading = false;
    }
    );
  }
}
