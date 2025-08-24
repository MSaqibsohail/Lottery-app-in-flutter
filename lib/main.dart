import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random=Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(

          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text('Lottery App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Text('Your Lottery Number is 4',
              style: TextStyle(fontSize: 16,),
            ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 260,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0x45b5afaf),
                      borderRadius: BorderRadius.circular(15),
          
                    ),
                    child: x== 4? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.done_all,color: Colors.green,size: 30),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.celebration,color: Colors.green,size: 30,),
                            Icon(Icons.celebration,color: Colors.green,size: 30),
                            Icon(Icons.celebration,color: Colors.green,size: 30),
                          ],
                        ),

                        Text('Congratulations you won the lottery.',textAlign: TextAlign.center,

                          style: TextStyle(fontSize: 16,),)
          
                      ],
                    ):
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.error,color: Colors.red,size: 30,),
                        Text('Better luck next time. Winning number is $x try again ',textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16,),
                        ),
                      ],
                    ),
                  ),
                )
              ]
          ),
        ),
         floatingActionButton: FloatingActionButton(
          onPressed: () {
            x=random.nextInt(10);
            setState(() {

            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
