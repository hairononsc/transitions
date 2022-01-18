import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.access_time),
      ),
      body: Center(
        child: Text('Pagina 2'),
      ),
    );
  }
}