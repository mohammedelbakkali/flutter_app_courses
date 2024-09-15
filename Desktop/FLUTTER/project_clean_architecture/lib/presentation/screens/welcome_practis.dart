

import "package:flutter/material.dart";
import "package:project_clean_architecture/presentation/screens/home_screen.dart";


// ! Le widget Material en Flutter est utilisé pour appliquer les principes de Material Design à ses enfants

class welcomePractis extends StatelessWidget {
  const welcomePractis({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           color: Colors.amber,
           
           child: Stack(
             
             children: [
                Container(
                   //color: Color.fromARGB(255, 18, 203, 48),
                   width: MediaQuery.of(context).size.width,
                   height: MediaQuery.of(context).size.height/1.6,
                   decoration:BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255)
                   ) ,
                ),
                Container(
                   //color: Color.fromARGB(255, 18, 203, 48),
                   width: MediaQuery.of(context).size.width,
                   height: MediaQuery.of(context).size.height/1.6,
                   decoration:BoxDecoration(
                      color: const Color(0xFF674AEF),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(70)
                      )
                   ) ,
                   child: Center(
                       child: Image.asset(
                        "images/office.png",scale: 0.8,
                        ),
                   ) ,
                ),
                 Align(
            alignment: Alignment.bottomCenter,
            child: Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height/2.666,
               decoration: BoxDecoration(color: Color(0xFF674AEF)),
            ),
           ),

             Align(
            alignment: Alignment.bottomCenter,
            child: Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height/2.666,
               padding: EdgeInsets.only(top:40,bottom: 30),
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70))
                ),
                child: Column(
                  children: [
                   Text(
                    "Learning is Everthing",
                    style: TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.w600,
                       letterSpacing: 1,
                       wordSpacing: 2
                    ),
                    ),
                    SizedBox(
                        height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                       horizontal: 40
                    ),
                    child: Text(
                      "Learning with Pleasure with Dear Programmer, whererver you are.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                         fontSize: 17,
                         color: Colors.black.withOpacity(0.6)
                      ),
                      ),
                    ),
                     SizedBox(
                        height: 40,
                    ),
                    Material(
                       color: Color(0xFF674AEF),
                       borderRadius: BorderRadius.circular(10),
                       child: InkWell(
                         onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                               return HomePage();
                           }));
                         },
                         child: Container(
                           padding: EdgeInsets.symmetric(vertical:15 , horizontal: 80),
                           child: Text("Get start",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 22,
                             fontWeight: FontWeight.bold,
                             letterSpacing: 1,
                           ),),
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