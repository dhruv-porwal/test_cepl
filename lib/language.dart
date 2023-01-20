import 'package:flutter/material.dart';

class Lang extends StatefulWidget {
  const Lang({Key? key}) : super(key: key);

  @override
  State<Lang> createState() => _Lang();
}

class _Lang extends State<Lang> {


  String dropdownvalue = 'English';




  // List of items in our dropdown menu
  var items = [
    'English',
    'Hindi',
    'Telugu',
    'Tamil',
    'Punjabi',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          alignment: Alignment.center,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,


              children: [












          Container(
                margin: EdgeInsets.only(left: 5, right: 5,bottom: 25),

                padding: const EdgeInsets.all(10.0),
                child:Text("Please select your Language",
                  textScaleFactor: 1.5,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

















              ),


                Container(
                  margin: EdgeInsets.only(left: 25, right: 25,bottom: 5),

                  padding: const EdgeInsets.all(10.0),
                  child:Text("You can change it at any time.",
                    textScaleFactor: 1,

                  ),

















                ),




Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      SizedBox(
        height: 60,
        width: 200,
    child:DropdownButton(

    // Initial Value
    value: dropdownvalue,

    // Down Arrow Icon
    icon: const Icon(Icons.keyboard_arrow_down),

    // Array list of items
    items: items.map((String items) {
    return DropdownMenuItem(
    value: items,
    child: Text(items,textAlign: TextAlign.left,),
    );
    }).toList(),
    // After selecting the desired option,it will
    // change button value to selected value
    onChanged: (String? newValue) {
    setState(() {
    dropdownvalue = newValue!;
    });
    },
    ),

    ),


      SizedBox(
        height: 60,
        width: 200,
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
    "Next",
    style: TextStyle(color: Colors.black,fontSize: 18,),

    ),
    ),

      )


    ],


























          ),

  ]

        )

  )

  );











  }
}
