import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:style_store/cities/cities_page.dart';
import 'file:///C:/Users/Gabo/Desktop/DesarrollodeApps/style_store/lib/ui/ui_constants.dart';



class HomePage extends StatelessWidget {


  void handleNavigateTap (BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> CitiesPage(),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(

            child: Image.asset(
              'assets/stylestore_logo.png.webp',
              height: 30,
            ),
          ),
        SafeArea(
          child: Center(
            child: Container(
                width: maxPageWidth,
        height: 806.0,
       


              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 10,
              ),
                Image.asset(
              'assets/stylestore_logo.png.webp',
              height: 30,
                    ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Experience is the New Luxury',
                  textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 550,
                  ),
                GestureDetector(
                  onTap: (){
                    print('Hello');
                  },
                  child: Text('Que te parece si arreglamos tu equipo?',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                       ),
                     ),
                ),
                  const SizedBox(
                    height: 15,
                  ),
                  RaisedButton(
    color: Colors.white,
                      elevation: 10,
                      splashColor: Color(0xFF346FFF),
                      shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0,
    ),
    ),

    child: Text('Empezar'), onPressed: () => handleNavigateTap (context),
                  ),
                  ],
                ),
                     ),
    ),

        ),
    ],
              ),
    );
  }
}
