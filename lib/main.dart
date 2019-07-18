import 'package:flutter/material.dart';
import 'strings.dart';



void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
 

 
  @override
  Widget build(BuildContext context) {



    //buildButton function
    Column buildButton(IconData icon, String label){

      Color color = new Color(0xff69f0ae);

      return Column(

        children: <Widget>[

          Icon(icon, color: color),

          Container(

            child: Text(
              
              label,
              
              style: TextStyle(

                color: color,

                fontSize: 20.0

              ),
            
            ),

          )

        ],

      );

    }




    // buttonDisplay Widget
    
    Widget  buttonDisplay = Container(

      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
            
            buildButton(Icons.phone, Strings.appCallButton),

            buildButton(Icons.skip_previous, Strings.appPreviousButton),

            buildButton(Icons.headset, Strings.appHearButton),

            buildButton(Icons.playlist_play, Strings.appRunButton),
          
        ],

      ),

    );






    return MaterialApp(


      debugShowCheckedModeBanner: false,

      title: Strings.appBarTitle,

      theme: ThemeData(

        primaryColor: new Color(0xff69f0ae),

      ),
        

      home: Scaffold(

        appBar: AppBar(

          title: Text(Strings.appBarTitle),

        ),


        body: ListView(

          children: <Widget>[

            buttonDisplay,

          ],

        ),

      ),

    );

  }

}