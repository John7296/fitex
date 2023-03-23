import 'package:fitex/model/exercise_model.dart';
import 'package:fitex/screens/start_workout.dart';
import 'package:fitex/utils/constants.dart';
import 'package:flutter/material.dart';

class ExerciseScreen extends StatelessWidget {
  ExerciseScreen({super.key});

  final List<ExerciseModel> exerciseList = [
    ExerciseModel(
      name: 'Lunges',
      imageUrl: 'https://thumbs.gfycat.com/InferiorFalseGalago-max-1mb.gif',
    ),
    ExerciseModel(
      name: 'Pushups',
      imageUrl: 'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
    ),
    ExerciseModel(
      name: 'Squats',
      imageUrl: 'https://thumbs.gfycat.com/BitterFoolishHalcyon-max-1mb.gif',
    ),
    ExerciseModel(
      name: 'Standing overhead dumbbell presses',
      imageUrl:
          'https://hips.hearstapps.com/hmg-prod/images/workouts/2016/03/dumbbellshoulderpress-1457041578.gif',
    ),
    ExerciseModel(
      name: 'Dumbbell rows',
      imageUrl: 'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
    ),
    ExerciseModel(
      name: 'Single-leg deadlifts',
      imageUrl: 'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
    ),
    ExerciseModel(
      name: 'Burpees',
      imageUrl: 'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
    ),
    ExerciseModel(
      name: 'Side planks',
      imageUrl: 'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
    ),
    ExerciseModel(
      name: 'Planks',
      imageUrl: 'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
    ),
    ExerciseModel(
      name: 'Glute bridge',
      imageUrl: 'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
    ),
    // Add more ImageModel instances as needed
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff282a2c),
        appBar: AppBar(
          backgroundColor: kAppBar,
          centerTitle: true,
          title: Text("Exercises"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.separated(
            itemCount: exerciseList.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => StartWorkoutScreen()));
                  // addPlan(exerciseList[index].imageUrl);
                  print(exerciseList[index].imageUrl);
                  print(exerciseList[index].name);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                tileColor: Color(0xff1e2021),
                leading: Image.network(
                  exerciseList[index].imageUrl,
                  fit: BoxFit.contain,
                ),
                title: Text(
                  exerciseList[index].name,
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Reps:10", style: TextStyle(color: Colors.grey)),
                    Text("Sets:15", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => StartWorkoutScreen()));
                  },
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: size.height * .01);
            },
          ),
        ),
      ),
    );
  }
}
