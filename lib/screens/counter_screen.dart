import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  
  int counter = 0;

  void operation(int sign){
    sign == 0 ? counter = 0 : counter += sign;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 =  TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(operationFunction: operation,),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function operationFunction;

  const CustomFloatingActions({
    Key? key, 
    required this.operationFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => operationFunction(-1),
        ),

        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: () => operationFunction(0),
        ),

        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1),
          onPressed: () => operationFunction(1),
        ),
        
      ],
    );
  }
}