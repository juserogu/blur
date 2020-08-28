

import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
    body:PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _pagina1(),
        _pagina2(),
      ],
    )
    );
  }

Widget _pagina1(){
return Stack(
  children:[
_colorFondo(),
_imagenFondo(),
_textos()
  ]
);

}
 Widget _colorFondo(){
  return Container(
    width: double.infinity,
    height: double.infinity,
    color: Color.fromRGBO(108, 192, 218, 0.5),
  );
 }
 Widget _imagenFondo(){
   return Container(
      width: double.infinity,
    height: double.infinity,
    child: Image(
      image: AssetImage('assets/original.png'),
      fit: BoxFit.cover,
      )

   );
 }
Widget _textos ( ){
final estiloText = TextStyle(color: Colors.white,fontSize: 50.0);

  return SafeArea(
    child: Column(
      
      children:[
        SizedBox(height: 20.0,),
      Text('11°', style: estiloText,),
      Text('Viernes', style: estiloText,),
      Expanded(child: Container()),
      Icon(Icons.keyboard_arrow_down,size: 70.0,color: Colors.white,)

       ] ),

 );
}


Widget _pagina2 (){
  return Container(
    width: double.infinity,
    height: double.infinity,
    color: Color.fromRGBO(108, 192, 218, 0.5),
    child: Center(
      child: RaisedButton(
        onPressed: (){},
        child:Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
          child:  Text('Bienvenidos',style: TextStyle(fontSize: 20.0),)),
        shape: StadiumBorder(),
        color:Colors.blue,
        textColor: Colors.white,
        
        ),
    ),
  );
}  

}