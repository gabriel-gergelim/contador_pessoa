import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp()
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
    }  
  }
  class HomePage extends StatelessWidget {
    const HomePage({super.key});

    void decrement() {
      print('Decrement');
    }

    void increment() {
      print('Increment');
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Pode entrar!',
            style: TextStyle(
              color: Color.fromARGB(255, 4, 87,154),
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            ),
            Text('',
            style: TextStyle(
              color: Color.fromARGB(255, 4, 87,154),
              fontSize: 26,
              fontWeight: FontWeight.w700
              ),
            ),
            const Padding(padding: EdgeInsets.all(40),
            child:Text('0',
            style: TextStyle(
              fontSize: 100,
              color: Color.fromARGB(255, 4, 87,154),
            ),
            ),
            ),
            



            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: decrement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: const Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                  child: Text('Saiu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  ),
                ),
                SizedBox(width: 32),

                TextButton(
                  onPressed: increment,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Text(
                  'Clique aqui',
                  style: TextStyle( color: Colors.black),
                    ),
                  ),
              ],
            ),
          ],
        ),
      );
    }
  }
  
