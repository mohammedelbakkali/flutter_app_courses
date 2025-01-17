

import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {

  // Creating static data in lists
  List catNames = [
    "Category",
    "Classes",
    "Free Course",
    "BookStore",
    "Live Course",
    "LeaderBoard"
  ];

  List<Color> catColors = [
     Color(0xFFFFCF2F),
     Color(0xFF6FE08D),
     Color(0xFF61BDFD),
     Color(0xFFCB84FB),
     Color(0xFF78E667),
     Color(0xFFFC7C7F),
  ];


  List<Icon> catIcons = [
    const Icon(Icons.play_circle_fill , color:Colors.white , size: 30,),
            const Icon(Icons.emoji_events, color:Colors.white , size: 30,),
            const Icon(Icons.video_library , color:Colors.white , size: 30,),
            const Icon(Icons.assignment , color:Colors.white , size: 30,),
            const Icon(Icons.store , color:Colors.white , size: 30,),
            const Icon(Icons.category , color:Colors.white , size: 30,),

          
  ];

   List imagesCourse = [
     "java",
     "Javascript",
     "python",
     "c#",
     "php"
   ];

  @override
  Widget build(BuildContext context) {  

      return Scaffold(
          body: ListView(
            children: [
               Container(
                 padding: const EdgeInsets.only(top: 15 , left:15 , bottom: 10 , right: 15 ),
                 decoration: const BoxDecoration(
                   color: Color(0xFF674AEF),
                   borderRadius: BorderRadius.only(
                     bottomLeft:Radius.circular(20),
                     bottomRight:Radius.circular(20)
                   )
                 ),
                 child:   Column(
                  
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                     const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Icon(Icons.dashboard,size: 30,color: Colors.white,),
                         Icon(Icons.notifications,size: 30,color: Colors.white,),
                       ],
                     ),

                     const SizedBox(height: 20),
                     const Padding(
                      padding: EdgeInsets.only(left: 3 ,bottom: 15 ),
                      child: Text("Hi, Programmer",style:TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.w600,
                         letterSpacing: 1,
                         wordSpacing: 2,
                         color: Colors.white
                      ),),
                      ),

                      Container(
                         margin: const EdgeInsets.only(
                          top: 5,
                          bottom: 20,
                         ),
                         width: MediaQuery.of(context).size.width,
                         height: 55,
                         decoration: BoxDecoration(
                           color :Colors.white,
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child: TextFormField(
                           decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: "Search here...",
                             hintStyle: TextStyle(
                               color: Colors.black.withOpacity(0.5)
                             ),
                             prefixIcon: const Icon(
                              Icons.search,
                              size: 25,
                              )
                           ),
                         ),
                      ),


                  ]),
               ),


               Padding(
                padding: const EdgeInsets.only(top: 20,left: 15 , right: 15),
                child: Column(
                   children: [
                     GridView.builder(
                      itemCount: catNames.length,
                       shrinkWrap: true,
                       physics: const NeverScrollableScrollPhysics(),
                       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3,
                         childAspectRatio: 0.9
                       ),
                       itemBuilder: (context,index){
                         return  Column(
                            children: [
                               Container(
                                 height: 60,
                                 width: 60,
                                 decoration:BoxDecoration(
                                  color: catColors[index],
                                  shape: BoxShape.circle,

                                 ),
                                 child: Center(
                                   child: catIcons[index],
                                 ),
                               ),
                               SizedBox(height: 10,),
                               Text(
                                catNames[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.6)
                                  ) ,
                                )
                            ],

                         );
                       },
                     ),

                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Text(
                        "Courses", 
                        style:TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600
                       )
                       ),
                       Text(
                        "See All", 
                        style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF674AEF)
                       )
                       )
                     ],
                     ),
                     SizedBox(height: 10,),

                     GridView.builder(
                      shrinkWrap: true ,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: (MediaQuery.of(context).size.height -50 - 25)/(4*240),
                       
                      ), 
                      itemCount: imagesCourse.length,
                      itemBuilder: (context,index){
                         return InkWell(
                           onTap: (){},
                           child: Container(
                             padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: Color(0xFFF5F3FF)
                             ),
                             child: Column(
  children: [
    Padding(
      padding: EdgeInsets.all(10),
      child: Image.asset(
        "images/${imagesCourse[index]}.png",
        width: 100,
        height: 100,
      ),
    ),
    SizedBox(height: 10),
    Expanded(
      child: Text(
        imagesCourse[index],
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black.withOpacity(0.6),
        ),
        textAlign: TextAlign.center, // Pour centrer le texte si nécessaire
      ),
    ),
    SizedBox(height: 10),
    Text(
      "55 Videos",
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Colors.black.withOpacity(0.6),
      ),
    ),
  ],
),

                           ),
                         );
                      },
                      )
                   ],


                ),
               )


            ],
          ),




          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
             iconSize: 32,
             selectedItemColor: Color(0xFF674AEF),
             selectedFontSize: 18,
             unselectedItemColor: Colors.grey,
             items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.assignment),label: "Courses"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Wishlist"),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),

             ],
          ) ,
      );
  }
  
}