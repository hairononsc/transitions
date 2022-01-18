import 'package:flutter/material.dart';
import 'package:transitions/src/pages/pagina2_page.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(context, _crearRuta());
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Pagina2Page()));
        },
        child: Icon(Icons.access_time),
      ),
      body: Center(
        child: Text('Pagina 1'),
      ),
    );
  }

  Route _crearRuta() {
    return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return Pagina2Page();
        },
        transitionDuration: Duration(milliseconds: 200),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curvedAnimation =
              CurvedAnimation(parent: animation, curve: Curves.easeIn);

          // return SlideTransition(
          //     position: Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
          //         .animate(curvedAnimation),child: child,);

          // return ScaleTransition(scale: Tween<double>(begin:0.0, end: 1.0).animate(curvedAnimation),child: child,);
          //         .animate(curvedAnimation),child: child,);

          return ScaleTransition(
              child: FadeTransition(
                opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                    CurvedAnimation(
                        parent: curvedAnimation, curve: Interval(0.5, 1.0))),
                child: child,
              ),
              scale:
                  Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation));
          // return FadeTransition(
          //     child: child,
          //     opacity:
          //         Tween<double>(begin: 0.3, end: 1.0).animate(curvedAnimation));
        });
  }
}
