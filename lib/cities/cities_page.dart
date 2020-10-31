import 'package:flutter/material.dart';
import 'package:style_store/cities/add/add_opcion_page.dart';
import 'file:///C:/Users/Gabo/Desktop/DesarrollodeApps/style_store/lib/ui/ui_constants.dart';
import 'package:style_store/common/header_widget.dart';

class CitiesPage extends StatelessWidget {

  void handleNavigateTap (BuildContext context) {
    Navigator.of(context).push(
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 600
          ),
          pageBuilder: (_, animation1, animation2){
        return SlideTransition(
          position: Tween<Offset>(
          begin: Offset(0.0, 1.0),
            end: Offset(0.0, 0.0),
        ).animate(animation1),
          child: AddOpcionPage()
        );
        },
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
        onPressed: () => handleNavigateTap(context),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            HeaderWidget(title: 'Watches',
            ),

                 Text('D.N.I: 39',
                   textAlign: TextAlign.start,
                   style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold
                   ),
                 ),
          const SizedBox(
          height: 30,
        ),
                 Text(
                  'Nro. OT:',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
