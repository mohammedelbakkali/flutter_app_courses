import "package:flutter/material.dart";

import "home_screen.dart";

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: const BoxDecoration(
                color: Color(0xFF674AEF),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                ),
              ),
              child: Center(
                child: Image.asset(
                  "images/man.png",
                  scale: 0.8,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: const EdgeInsets.only(top: 40 , bottom: 30),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 62, 62),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(150),
                  ),
                ),
                child:  Column(
                  children: [
                    const Text(
                      "learning is Everything!",
                      style: TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.w600,
                         letterSpacing:1,
                         wordSpacing: 2
                      ),
                      ),

                      const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          "Learning with our programm",
                          textAlign:TextAlign.center ,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.6)),
                        ),
                        ),
                      const SizedBox(height: 60,),
                      Material(
                        color: const Color(0xFF674AEF),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                           onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                               return HomePage();
                          }));
                           },
                           child: Container(
                             padding:const EdgeInsets.symmetric(vertical:15,horizontal:80 ) ,
                             child: const Text(
                                "Get Start",
                                style: TextStyle(
                                   color:Colors.white,
                                   fontSize:22,
                                   fontWeight: FontWeight.bold,
                                   letterSpacing: 1
                                ),
                             ),
                           ),
                        ),
                      )

                      
                      
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
