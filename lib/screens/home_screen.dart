import 'package:flutter/material.dart';

//Primero intentamos hacer con un statelesswidget hasta donde se pueda xd
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const fontSize30 =  TextStyle(fontSize: 30);
    int counter = 15;

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Numero de taps', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_circle_outlined),
        onPressed: () {
          counter++;
          print('Hola $counter');
        },
      ),
    );
  }

}