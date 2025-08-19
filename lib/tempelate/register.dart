import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;

class Register extends StatelessWidget {
  const Register({super.key});
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Spicy & Zesty"), value: "Spicy & Zesty"),
      DropdownMenuItem(child: Text("Sweet & Rich"), value: "Sweet & Rich"),
      DropdownMenuItem(child: Text("Sour & Tangy"), value: "Sour & Tangy"),
      DropdownMenuItem(child: Text("Umami & Savory"), value: "Umami & Savory"),
      DropdownMenuItem(child: Text("Bitter & Astringent"),value:"Bitter & Astringent",)

    ];
    return menuItems;
  }
  List<DropdownMenuItem<String>> get dropdownlist {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("vegetarian"), value: "vegetarian"),
      DropdownMenuItem(child: Text("non-vegetarian"), value: "non-vegetarian"),
      DropdownMenuItem(child: Text("vegan"), value: "vegan"),

    ];
    return menuItems;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black87,
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [

          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: [
                Text('Welcome',
                  style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold) ,),
                Text('Register Below to begin your Journey',
                  style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold) ,),
                SizedBox(
                  width:500 ,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child:  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        hintText: 'Enter Your Name',
                        fillColor: Colors.white,
                      ),

                    ),),
                ),
                SizedBox(
                  width:500 ,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child:  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        hintText: 'Email',
                        fillColor: Colors.white,
                      ),

                    ),),
                ),

                SizedBox(
                  width:500 ,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child:  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        hintText: 'Enter Password',
                        fillColor: Colors.white,
                      ),

                    ),),
                ),
                SizedBox(
                  width:500 ,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child:  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        hintText: 'Confirm Password',
                        fillColor: Colors.white,
                      ),

                    ),),
                ),
                SizedBox(
                  width:500 ,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child:  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),

                        hintText: 'Any diseases?',
                        fillColor: Colors.white,
                      ),

                    ),),
                ),

        DropdownButton(

            items: dropdownItems,
            value: "Spicy & Zesty",
            onChanged: (String? newValue) {


            }),
                DropdownButton(

                    items: dropdownlist,
                    value: "vegetarian",
                    onChanged: (String? newValue) {


                    }),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: TextButton(
                    style: ButtonStyle(

                      foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.orange),


                    ),
                    onPressed: () { },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text('Register',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),

                  ),
                ),

              ],



            ),
          )
        ],
      ),
    );
  }
}


