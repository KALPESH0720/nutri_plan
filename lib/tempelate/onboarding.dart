import 'package:flutter/material.dart';
import 'package:nutri_plan/tempelate/login.dart';

class onboarding extends StatelessWidget {
  const onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2B34),
      body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/onboarding.jpg'),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Flow into your \nfittest self!',
                        style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold)),

                    SizedBox(height: 10,),
                    Text('Track smart. Eat better. Feel great — all in one seamless experience.',
                      style:  TextStyle(color: Colors.grey,fontSize: 16),),

                    SizedBox(height: 20,),
                    SizedBox(
                        width: 318,
                        height: 54,
                        child:ElevatedButton(onPressed: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Login())
                          );

                        },
                            child: Text(
                              'Let\'s Go',
                              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            ))
                    )


                  ],
                ),
              ),
            )
          ]

      ),
    );
  }
}
