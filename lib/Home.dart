import 'dart:math';

import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String gender="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(

      title: Text("Home"),
    ),

    body: Container(
    margin: EdgeInsets.only(left: 25, right: 25),
    alignment: Alignment.center,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,


    children: [



      Container(
        margin: EdgeInsets.only(left: 5, right: 5,bottom: 25),

          padding: const EdgeInsets.all(10.0),
          child:Text("Please select your profile",
textScaleFactor: 1.5,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

















      ),
















        RadioListTile(

        title: Text("Shipper"),

      value: "Shipper",
          shape: RoundedRectangleBorder( //<-- SEE HERE
              side: BorderSide(width: 2)),
      groupValue: gender,
      onChanged: (value){
        setState(() {
          gender = value.toString();
        });
      },
    ),
      SizedBox(height: 5,width:5),
      RadioListTile(

        shape: RoundedRectangleBorder( //<-- SEE HERE
          side: BorderSide(width: 2)),
        title: Text("Transporter"),

        value: "Transporter",
        groupValue: gender,
        onChanged: (value){
          setState(() {
            gender = value.toString();
          });
        },
      ),
SizedBox(height: 5,width:5),
      SizedBox(
        height: 60,
        width: 500,
      child:TextButton(

          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              'phone',
                  (route) => false,
            );
          },


        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey.shade400),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(

                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                    side: BorderSide(color: Colors.black),


                )
            )
        ),
          child: Text(
            "Continue",
            style: TextStyle(color: Colors.black,fontSize: 18,),

          ),
      ),

      ),



    ],
     ),



    )

    );









  }
}
