import 'package:flutter/material.dart';
import 'burc_detay.dart';
import 'burc_liste.dart';




void main (){
  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "BURÇ REHBERİ ",
     debugShowCheckedModeBanner: false,
     initialRoute: "/burcListesi",
     routes: {
       "/" : (context) => BurcListesi(),
   "/burcListesi" : (context) => BurcListesi(),
     },



     onGenerateRoute: (RouteSettings sestings){
       List<String> pathElemanlari = sestings.name.split("/"); // / burcDetay / 1
       if(pathElemanlari[1] == "burcDetay"){
         return MaterialPageRoute(builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));

       }
       return null;
     },
     theme:ThemeData(scaffoldBackgroundColor: Colors.black,
   ),
   );

  }




}