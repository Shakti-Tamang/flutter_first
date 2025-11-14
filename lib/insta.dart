import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class InstagRam extends StatelessWidget {
   InstagRam({super.key});
List<Story> stories=[
  Story(img:"https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",name:"Your Story"),
  Story(img:"https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",name:"jina"),
  Story(img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpmaHzyrSF08sJyXt3EUZ2DxNN1Lp4e-qpc5d8345zYuLQak3MOOo3739_2evUf7VNgDU&usqp=CAU",name:"tine"),
  Story(img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnTEj-oM6TVFpW8pSr8UW7BBOrKRCXvT7cSO7F3IzgjgaeKS7kOXLNOyFa4YgVmnYTJvI&usqp=CAU",name:"Anusha"),
  Story(img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0l9BD8MQ6YDwehKrBaHI_M0P4Et5sPiAt3Ng8-CFZRicwzgVUtZ5JBDS7vrp7zH1rFI4&usqp=CAU",name:"Amrita"),
  Story(img:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQympi-5b-iApyQaRLI_VMmvNBZVuTXp64dQvYzS98kWzkd7y1kHouxkbWU_eaP3y1UchI&usqp=CAU",name:"Anisha"),
];
  @override
  Widget build(BuildContext context) {
    // scaffold is layout for app
    return Scaffold(
      appBar:AppBar(
leading: Icon(Icons.camera_alt_outlined,),
centerTitle: true,
title:SizedBox(
  height: 30,
  child: 
 Image.asset("assets/images/insta_logo.png",),
),
actions: [
  Icon(Boxicons.bxl_messenger,size: 30,),
  SizedBox(width: 10,),
  Icon(Icons.send_outlined,size: 30,),
  SizedBox(width: 15,),

],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
  color: Colors.grey,
  thickness: 0.5,
),
Padding(padding: EdgeInsets.all(10),child: 
SizedBox(height: 105,child:
 ListView.builder(
  itemCount: stories.length,
  scrollDirection: Axis.horizontal,
  itemBuilder: (context,index){
return Padding(padding: EdgeInsets.all(5),child:
 Column(children: [
Container(
  padding: EdgeInsets.all(2), // Border width
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
      color: Colors.pinkAccent, // Border color
      width: 3, // Border thickness
    ),
  ),
  child: CircleAvatar(
    radius: 30,
    backgroundColor: Colors.pink,
    backgroundImage: NetworkImage(stories[index].img!),
  ),
),

SizedBox(height: 5,),
Text(stories[index].name,style: TextStyle(
  fontSize: 12,) )
],));
}),)
,),

Divider(),
Expanded(child: 
ListView.builder(
  itemCount: 5,
  itemBuilder: (context,index){
return Column(
  children: [
    
Padding(padding: EdgeInsets.all(10),
child:
Row(children: [
  CircleAvatar(
  radius: 25,
  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"),
),
SizedBox(width: 10,),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
Text("Hina",
style: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
),) ,
Text("New York, USA",)
],),
Spacer(),
Icon(Icons.more_horiz,size: 28,)
 
],)
),

Container(
  height: 375,
  width: double.infinity,
  color: Colors.blue,
),

Padding(padding:EdgeInsets.all(10),
child: Row(

  children: [
    Icon(Icons.favorite_border_outlined,size: 30,),
    SizedBox(width: 10,),
    Icon(Boxicons.bx_comment,size: 30,),
    SizedBox(width: 10,),
    Icon(Boxicons.bx_send,size: 30,),
    SizedBox(width: 60,),
    Icon(Icons.more_horiz_outlined,size: 30,),
    Spacer(),
    Icon(Icons.bookmark_outline,size: 30,)
  ],
),)
,
Padding(padding:EdgeInsets.all(10),
child:Row(
  
  children: [
    CircleAvatar(
  radius: 14,
  backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"),
)
,
SizedBox(width: 10,),
Text("Liked by amu and 44,68")
  ],
) ,
)

,

  ],
);
})
),



],
      ),
  
    );
  }
}

class Story{
  String? img;
  String name;
  Story({ this.img,required this.name});
}