


import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images =[
      "g.png",
      "t.png",
      "f.png"
    ];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container (
            width: w,
            height: h*0.3,

            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "img/signup.png"
                    ),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              children: [
                  SizedBox(height: h*0.15,),
                  CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 60,
                    backgroundImage: AssetImage("img/profile1.png"),
                  )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30) ,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            color: Colors.grey.withOpacity(0.2),
                            offset: Offset( 1,1)

                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                        prefixIcon: Icon(Icons.email, color: Colors.deepOrangeAccent,),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30) ,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            color: Colors.grey.withOpacity(0.2),
                            offset: Offset( 1,1)

                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password_outlined, color: Colors.deepOrangeAccent,),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: Container()),

                  ],
                )

              ],
            ),
          ),
          SizedBox(height: 70,),
          Container(
            width: w*0.5,
            height: h*0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage(
                      "img/loginbtn.png"
                  ),
                  fit: BoxFit.fill
              ),
            ),
            child: Center(
              child: Text(
                  "Sign up",
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  )),
            ),

          ),
          SizedBox(height: 10,),
          RichText(

              text: TextSpan(
                recognizer: TapGestureRecognizer()..onTap=()=> Get.back() ,
                  text: "Have an account ?",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500],
                  )
              ),

              ),
          SizedBox(height: w*0.08,),
          RichText(text: TextSpan(
              text: "Sign up using on of the the following methods",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
              ),

          ),),
          Wrap(
            children: List<Widget>.generate(
                     3,
                    (index){
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.grey[500],
                                  child: CircleAvatar(

                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      "img/"+images[index],
                                    )
                                  ),
                                ),
                              );

            }),

          ),




        ],
      ),
    );
  }
}
