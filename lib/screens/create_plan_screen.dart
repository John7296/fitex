import 'dart:convert';

import 'package:fitex/model/exercise_model.dart';
import 'package:fitex/screens/view_plan_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';

class OwnPlanScreen extends StatefulWidget {
  const OwnPlanScreen({super.key});

  @override
  State<OwnPlanScreen> createState() => _OwnPlanScreenState();
}

class _OwnPlanScreenState extends State<OwnPlanScreen> {
  TextEditingController planNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  TextEditingController goalController = TextEditingController();

  Set<String> selectedItems = {};

  @override
  Widget build(BuildContext context) {
    var selectedExercise = [];

    // @override
    // void dispose() {
    //   planName.dispose();
    //   description.dispose();
    //   duration.dispose();
    //   goal.dispose();
    //   super.dispose();
    // }

    final List<ExerciseModel> exerciseList = [
      ExerciseModel(
        name: 'Lunges',
        imageUrl: 'https://thumbs.gfycat.com/InferiorFalseGalago-max-1mb.gif',
      ),
      ExerciseModel(
        name: 'Pushups',
        imageUrl:
            'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
      ),
      ExerciseModel(
        name: 'Squats',
        imageUrl: 'https://thumbs.gfycat.com/BitterFoolishHalcyon-max-1mb.gif',
      ),
      ExerciseModel(
        name: 'Standing overhead \ndumbbell presses',
        imageUrl:
            'https://hips.hearstapps.com/hmg-prod/images/workouts/2016/03/dumbbellshoulderpress-1457041578.gif',
      ),
      ExerciseModel(
        name: 'Dumbbell rows',
        imageUrl:
            'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
      ),
      ExerciseModel(
        name: 'Single-leg deadlifts',
        imageUrl:
            'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
      ),
      ExerciseModel(
        name: 'Burpees',
        imageUrl:
            'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
      ),
      ExerciseModel(
        name: 'Side planks',
        imageUrl:
            'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
      ),
      ExerciseModel(
        name: 'Planks',
        imageUrl:
            'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
      ),
      ExerciseModel(
        name: 'Glute bridge',
        imageUrl:
            'https://thumbs.gfycat.com/GlossySkinnyDuckbillcat-max-1mb.gif',
      ),
      // Add more ImageModel instances as needed
    ];

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff151718),
        appBar: AppBar(
          backgroundColor: Color(0xff1e2021),
          centerTitle: true,
          title: Text("Add plan"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1e2021)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      textHeadline(
                        'Create your own plan',
                      ),
                      textField(planNameController, "Plan Name"),
                      textField(descriptionController, "Description"),
                      textField(durationController, "Duration (Days)"),
                      textField(goalController, "Your Goal"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: textHeadline(
                          'Select Exercises',
                        ),
                      ),
                      Container(
                        height: 250,
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: exerciseList.length,
                          itemBuilder: (BuildContext context, int index) {
                            ExerciseModel item = exerciseList[index];
                            bool isSelected = selectedItems.contains(item.name);
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  if (isSelected) {
                                    selectedItems.remove(item.name);
                                  } else {
                                    selectedItems.add(item.name);
                                  }
                                  saveSelectedItems();
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.network(exerciseList[index].imageUrl),
                                    Text(
                                      exerciseList[index].name,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      isSelected
                                          ? Icons.check_box
                                          : Icons.check_box_outline_blank,
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider(
                              thickness: 1,
                              color: Colors.white,
                            );
                          },
                        ),
                      ),
                      addButton(() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ViewPlanScreen()));
                      }),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void saveSelectedItems() {
    var box = Hive.box('selectedItems');
    List<String> itemList = selectedItems.toList();

    box.put('items', itemList);
    print(itemList);
  }

  Widget textField(TextEditingController controller, String hintText) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        // disabledBorder: InputBorder.none,
      ),
    );
  }

  Widget textHeadline(String headline) {
    return Text(
      headline,
      style: TextStyle(color: Colors.white, fontSize: 20),
    );
  }

  Widget addButton(Function() buttonAction) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(onPressed: buttonAction, child: Text("ADD")),
      ),
    );
  }
}
