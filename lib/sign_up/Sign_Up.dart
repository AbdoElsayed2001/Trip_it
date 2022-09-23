import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../locations/convex.dart';
import '../response/Signup_response.dart';


class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  bool agreement = false;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();

  bool isLoading = false;
  bool isPassword = true;
  String? token;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        height: MediaQuery.of(context).size.height,
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
           height: 16,
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
                         const SizedBox(
                           height: 14,
                         ),
                         const Center(
                           child: Text(
                             "Sign Up",
                             style: TextStyle(
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 22),
                           ),
                         ),
                         SizedBox(
                           height: 8,
                         ),
                         TextFormField(
                           keyboardType: TextInputType.name,
                           style: TextStyle(
                               fontSize: 12,
                               color: Color(0xff111111).withOpacity(0.5)),
                           controller: name,
                           decoration:
                               const InputDecoration(hintText: "Name"),
                           validator: (value) {
                             if (value == null || value.isEmpty) {
                               return "Name Is Not Valid";
                             }
                             return null;
                           },
                           onChanged: (value) {
                             setState(() {});
                           },
                         ),
                         SizedBox(
                           height: 6,
                         ),
                         TextFormField(
                           keyboardType: TextInputType.emailAddress,
                           style: TextStyle(
                               fontSize: 12,
                               color: Color(0xff111111).withOpacity(0.5)),
                           controller: email,
                           decoration:
                               const InputDecoration(hintText: "Email"),
                           validator: (value) {
                             if (value == null || value.isEmpty) {
                               return "Email Is Not Valid";
                             }
                             return null;
                           },
                           onChanged: (value) {
                             setState(() {});
                           },
                         ),
                         SizedBox(
                           height: 6,
                         ),
                         TextFormField(
                           keyboardType: TextInputType.visiblePassword,
                           style: TextStyle(
                               fontSize: 12,
                               color: Color(0xff111111).withOpacity(0.5)),
                           controller: password,
                           decoration:
                               const InputDecoration(hintText: "Password"),
                           validator: (value) {
                             if (value == null || value.isEmpty) {
                               return "Password Is Not Valid";
                             }
                             return null;
                           },
                           onChanged: (value) {
                             setState(() {});
                           },
                         ),
                         SizedBox(
                           height: 6,
                         ),
                         TextFormField(
                           keyboardType: TextInputType.number,
                           style: TextStyle(
                               fontSize: 12,
                               color: Color(0xff111111).withOpacity(0.5)),
                           controller: age,
                           decoration:
                               const InputDecoration(hintText: "Age"),
                           validator: (value) {
                             if (value == null || value.isEmpty) {
                               return "Age Is Not Valid";
                             }
                             return null;
                           },
                           onChanged: (value) {
                             setState(() {});
                           },
                         ),
                         ListTile(
                             leading: Container(
                               width: 2,
                               child: Checkbox(
                                 value: agreement,
                                 onChanged: (value) {
                                   setState(() {
                                     agreement = value!;
                                   });
                                 },
                               ),
                             ),
                             title: Transform.translate(
                               offset: Offset(-35, 0),
                               child: Row(
                                 children: [
                                   Text(
                                     "I agree the ",
                                     style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 12),
                                   ),
                                   Text(
                                     " Terms & Conditions",
                                     style: TextStyle(
                                         color: Colors.blue, fontSize: 12),
                                   )
                                 ],
                               ),
                             )),
                         // const SizedBox(
                         //   height: 16,
                         // ),
                         SizedBox(
                           width: double.infinity,
                           child: Container(
                             width: 200,
                             height: 50,
                             decoration: BoxDecoration(
                               color: Color(0xff4458DB),
                               borderRadius: BorderRadius.circular(40),
                             ),
                             child: Stack(
                               alignment: Alignment.center,
                               children: [
                                 TextButton(
                                   onPressed: () {
                                     if (_formKey.currentState!
                                         .validate()) {
                                       _formKey.currentState!.save();
                                       regester(
                                           email: email.text,
                                           password: password.text,
                                           name: name.text,
                                           age: age.text);
                                       print(email.text);
                                       print(password.text);
                                     }
                                   },
                                   child: Text(
                                     "Sign Up",
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
           ]),
         ),
         Container(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset(
                 "assets/Facebook.png",
                 width: 50,
                 height: 58,
                 color: Colors.white,
               ),
               const SizedBox(
                 width: 32,
               ),
               Image.asset(
                 "assets/Google.png",
                 width: 50,
                 height: 58,
                 color: Colors.white,
               ),
             ],
           ),
         ),
         const SizedBox(
           height: 16,
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: const [
             Text(
               "Already have n ccount? Login",
               style: TextStyle(color: Colors.white, fontSize: 12),
             ),
           ],
         ),
         const SizedBox(
           height: 64,
         ),
         ],
         ),
      ));
  }

  Future regester({
    required email,
    required password,
    required name,
    required age,
  }) async {
    setState(() {
      isLoading = true;
    });
    Response regesterResopnse =
        await post(Uri.parse("http://alcaptin.com/api/register"), headers: {
      "Accept": "application/json",
      "Authorization": "Bearer $token"
    }, body: {
      "email": email,
      "password": password,
      "first_name": name,
      "last_name": "mohamed",
      "age": age,
      "gender": "male",
    });

    dynamic convertedJson = jsonDecode(regesterResopnse.body);
    print(regesterResopnse.body);

    if (regesterResopnse.statusCode == 200) {
      SignupResponse userData = SignupResponse.fromJson(convertedJson);
      print(" Welcome ${userData.data}");
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Convex()));
    } else {
      print(convertedJson["message"]);
    }

    setState(() {
      isLoading = false;
    });
  }
}
