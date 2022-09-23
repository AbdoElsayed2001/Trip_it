import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../locations/convex.dart';
import '../response/Sign_in_resopnse.dart';
import '../sign_up/Sign_Up.dart';


class Sign_in extends StatefulWidget {


  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  bool isLoading = false;
  bool isPassword= true;
  String? token;

  final _formKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Expanded(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment(0.8, 1),
              colors: [
                Color(0xff4458DB),
                Color(0xffB444DB),
              ],
            ),
          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 64,
                ),
                Image.asset(
                  "assets/Logo White.png",
                  color: Colors.white,
                  width: 80,
                  height: 64,
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      Center(
                        child: Container(
                          width: 260,
                          height: 280,
                          margin: const EdgeInsets.only(top: 6),
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 285,
                          height: 300,
                          margin: const EdgeInsets.only(top: 18),
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.fromLTRB(16.0, 32, 16, 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 14,),
                                  const Center(
                                    child: Text(
                                      "Sign In",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                  ),
                                  const SizedBox(height: 8,),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(fontSize: 12,color: Color(0xff111111).withOpacity(0.5)),
                                    controller: email,
                                    decoration: InputDecoration(hintText: "Email"),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          !value.contains("@")) {
                                        return "Email Is Not Valid";
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {},
                                  ),
                                  const SizedBox(height: 16,),
                                  TextFormField(
                                    keyboardType: TextInputType.visiblePassword,
                                    style: TextStyle(fontSize: 12,color: Color(0xff111111).withOpacity(0.5)),
                                    controller: password,
                                    decoration: InputDecoration(hintText: "Password"),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty) {
                                        return "Password Is Not Valid";
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      setState((){

                                      });
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        child: const Text(
                                          "Forget Password ?",
                                          style: TextStyle(
                                            color: Color(0xff4458DB),
                                            fontSize: 12
                                          ),
                                        ),
                                        onPressed: () {
                                          // Navigator.push(context,
                                          //   MaterialPageRoute(builder: (context) => ForgetPassword()),);
                                        },
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  SizedBox(width: double.infinity,
                                    child: Container(
                                      width: 250,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff4458DB),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                           isLoading? Center(child:   CircularProgressIndicator(),):TextButton(
                                                  onPressed: () {
                                                    if (_formKey.currentState!
                                                        .validate()) {
                                                      _formKey.currentState!.save();
                                                      login(
                                                        email: email.text,
                                                        password: password.text
                                                      );
                                                      print(email.text);
                                                      print(password.text);
                                                    }
                                                  },
                                                  child: const Text(
                                              "Sign in",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white12,
                                                    borderRadius:
                                                        BorderRadius.circular(50),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(16),
                                                    child: Image.asset(
                                                      "assets/right-arrow.png",
                                                      color: Colors.white,
                                                    ),
                                                  ))),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ])),
                const SizedBox(height: 60,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/Facebook.png",
                      width: 50,
                      height: 100,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Image.asset(
                      "assets/Google.png",
                      width: 50,
                      height: 100,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>const Sign_Up()),
                          );
                        },
                        child:const Text("Sign up", style:TextStyle(color: Colors.white,fontSize: 12,fontWeight:FontWeight.normal)),
                    ),
                  ],
                ),
                const SizedBox(height: 64,),
              ],
            ),
          ),
      ),
      ),
    );
  }
    Future login({required email,required password}) async{
    setState((){
      isLoading = true;
    });
    Response loginResopnse = await post(Uri.parse("http://alcaptin.com/api/login"),
        headers: {
          "Accept": "application/json",
          "Authorization":"Bearer $token"
        },
        body: {
          "email": email,
          "password": password,
        });

    dynamic convertedJson = jsonDecode(loginResopnse.body);
    print(loginResopnse.body);

    if (loginResopnse.statusCode == 200) {
      SignInResopnse userData = SignInResopnse.fromJson(convertedJson);
      print(" Welcome ${userData.data}");
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Convex()));
    } else {
      print(convertedJson["message"]);
    }


    setState(() {
      isLoading = false;
    });

  }
}
