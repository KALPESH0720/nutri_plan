import 'package:flutter/material.dart';
import 'package:nutri_plan/tempelate/Nav_bar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Color(0xff2C2B34),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16, vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(
                  builder: (context) {
                    return SizedBox(
                      height: 50,

                      child: TextButton(
                        style: ButtonStyle(

                          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),


                        ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },

                        child:  Container(
                          width: 50,
                          height: 50,

                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/menu.png'),

                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                ),
                // Container(
                //   width: 50,
                //   height: 50,
                //
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage('assets/menu.png'),
                //
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                  radius: 30,
                ),

              ],
            ),


          ),
        ],
      ),
    );
  }
}