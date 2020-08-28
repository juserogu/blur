
import 'package:flutter/material.dart';


class BasicoPage extends StatelessWidget {
  
final titulo = TextStyle(fontSize: 20.0 ,fontWeight: FontWeight.bold );
  final sub  = TextStyle(fontSize: 12.0 ,color: Colors.grey );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
             children:[
            _crearImagen(),
            _crearContainer(),
           _crearAcciones(),
           _crearText()
          ]
     )
        
   );
  }
Widget _crearImagen(){
  return Image(
    image: NetworkImage('https://animalessalvajes247.com/wp-content/uploads/2020/05/leopardo-1280-720-1200x675.jpg'),
       );
}
Widget _crearContainer (){
   return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0 ),
      child: Row(
       children: <Widget>[
        Expanded(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
           Text('Leopardo', style: titulo,),
           SizedBox(height: 10.0),
           Text('Un leopardo que esta listo para atacar',style: sub,)
             ],                   
             ),
            ),
           Icon(Icons.star, color: Colors.red,),
           Text('100', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),)
         ],
      ),
   );
}


Widget _crearAcciones(){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
     _accion(Icons.call,'call'),
     _accion(Icons.near_me,'route'),
     _accion(Icons.share,'Share'),
      
      
    ],
  );
}

Widget _accion (IconData icon, String texto) {
  return Column(
       children: <Widget>[
       Icon(icon, color: Colors.blue,size : 40.0),
       SizedBox(height: 15.0,),
       Text(texto, style: TextStyle(fontSize: 15.0,color: Colors.blue),) 
       ],
       );
}

Widget _crearText (){

 return Container(
   padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
   child: Text( 
'Nisi nulla reprehenderit sit reprehenderit et veniam velit nostrud adipisicing est. Culpa deserunt magna amet velit non do enim ad laboris. Lorem veniam duis deserunt nulla et culpa deserunt. Laborum cillum enim reprehenderit ea do est eu elit quis consequat duis qui.',
textAlign: TextAlign.justify,
 ));
}

}