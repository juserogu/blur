import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: <Widget>[
        _fondoApp(),

        SingleChildScrollView(
         
          child: Column(
            children: <Widget>[
              _titulos(),
              _botonesRedondeados()
            ],
          ),
        ),
        

      ],

    ),
        bottomNavigationBar: _bottomNavigationBar(context)
          );
    
  } 

 Widget _fondoApp(){
   final gradiente = Container(
     width: double.infinity,
     height: double.infinity,
     decoration: BoxDecoration(
       gradient: LinearGradient(
         begin: FractionalOffset(0.0, 0.6) ,
         end: FractionalOffset(0.0, 1.0) ,
         colors: [
           Color.fromRGBO(52, 54, 101, 1.0),
           Color.fromRGBO(35, 37, 57, 1.0),
         ])
     ),
   );
   
   final cajaRosa = 
   Transform.rotate(
     angle: -pi/5.0,
     child: Container(
     height:360.0,
     width:360.0,
     
     decoration: BoxDecoration(
       color: Colors.pink,
       borderRadius:  BorderRadius.circular(80.0),
       gradient: LinearGradient(
         colors: [
           Color.fromRGBO(236, 98, 188, 1.0),
           Color.fromRGBO(241, 142, 172, 1.0),
         ])
     ),
     ) 
   );

   return  Stack(
     children: <Widget>[
       gradiente,
       Positioned(
         top: -100,
         child: cajaRosa)
     ],
   );
 }

Widget _titulos (){
  return SafeArea(
    child: Container (
      padding: EdgeInsets.all(20.0),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Text('Classsify transaction', style : TextStyle(color:Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold)),
         SizedBox(height:30.0),
         Text('Classsify transaction into a particular category', style : TextStyle(color:Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold))
       ],
     ),
    ),
  );
}

Widget _bottomNavigationBar(BuildContext context){
  return Theme (
    data: Theme.of(context).copyWith(
      canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
      primaryColor: Colors.pinkAccent,
      textTheme: Theme.of(context).textTheme
      .copyWith(caption:TextStyle (color: Color.fromRGBO(116, 117, 152, 1.0)))

    ),
    child: BottomNavigationBar(
      
      items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today,size:30.0),
        title: Container()
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.bubble_chart,size:30.0),
        title: Container()
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.supervised_user_circle,size:30.0),
        title: Container()
        )
      ])
  );


}


  Widget  _botonesRedondeados(){
   
   return Table(
    children: [
      TableRow(
        children: [
          _crearBotonRedondeado(Colors.blue,Icons.border_all,'General'), 
            _crearBotonRedondeado(Colors.blue,Icons.border_all,'Album'), 
            
        ]),
         TableRow(
        children: [
          _crearBotonRedondeado(Colors.orange,Icons.album,'Direction'), 
            _crearBotonRedondeado(Colors.red,Icons.business,'Business'), 
        ]),
         TableRow(
        children: [
          _crearBotonRedondeado(Colors.yellow,Icons.local_taxi,'Taxi'),
            _crearBotonRedondeado(Colors.grey,Icons.person,'Walk'), 
       ]),
     ]
   );
  }

  Widget _crearBotonRedondeado(Color color , IconData icon,String texto){


    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
      child: Container(
        margin: EdgeInsets.all(15.0),
        height: 180.0,
        decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: color,
              radius: 35.0,
              child: Icon(icon,color:Colors.black),
            ),
            Text(texto, style: TextStyle(color:Colors.pink),)
          ],
        )
      ),
      )
    );
  }


}