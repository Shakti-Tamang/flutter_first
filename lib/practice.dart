import 'package:flutter/material.dart';

class Fisrt extends StatelessWidget {
  const Fisrt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
Padding(
  padding: EdgeInsets.only(right: 20),
  child:
    Icon(Icons.notifications,))
    
        ],
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text("Ttile",


        style:TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ) ,),
      ),
      body:Column(

children: [

  
  Container(
decoration: BoxDecoration(

  color: Colors.amber,
  borderRadius:BorderRadius.circular(10),

)
,
height: 200,
width: 700,
margin: EdgeInsets.all(10),
padding: EdgeInsets.all(10),
    child: Text("Hello world",
    style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.red),
    ),



  ),
    Container(
decoration: BoxDecoration(

  color: Colors.amber,
  borderRadius:BorderRadius.circular(10),

)
,
height: 200,
width: 700,
margin: EdgeInsets.all(10),
padding: EdgeInsets.all(10),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Hello",
      
      style: TextStyle(
        color: Colors.blue)
      ),
        Text("world",
      
      style: TextStyle(
        color: Colors.blue)
      ),
    ],
  ),

  )

],

      ) ,
    );
    



  }
}