import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StartWorkoutScreen extends StatelessWidget {
  const StartWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xff151718),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              color: Colors.white,
              height: 50,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: ElevatedButton(onPressed: (){}, child: Text("Pause",style: TextStyle(fontSize: 20),),),
              )),
          )
        ],
      ),

    ),
    );
  }
}