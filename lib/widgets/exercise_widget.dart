import 'package:fitex/model/exercise_model.dart';
import 'package:fitex/screens/exercise_screen.dart';
import 'package:fitex/widgets/horizontal_card_widget.dart';
import 'package:flutter/material.dart';

class ExerciseWidget extends StatelessWidget {
  const ExerciseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Explore Exercises",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          height: size.height * 1.02,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff1e2021)),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            // shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              // mainAxisSpacing: 1.0,
              // crossAxisSpacing: 1.0,
              // mainAxisExtent: 150
            ),
            itemCount: exerciseList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: HorizontalCardWidget(
                    title: exerciseList[index].name,
                    image: exerciseList[index].imageUrl,
                    buttonAction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ExerciseScreen()));
                    }),
              );
            },
          ),
        ),
      ],
    );
  }
}

final List<ExerciseModel> exerciseList = [
  ExerciseModel(
    name: 'FULL BODY',
    imageUrl: 'assets/images/full_body.jpg',
  ),
  ExerciseModel(
    name: 'LOWER BODY',
    imageUrl: 'assets/images/lower_body.jpg',
  ),
  ExerciseModel(
    name: 'ABS',
    imageUrl: 'assets/images/abs_image.jpg',
  ),
  ExerciseModel(
    name: 'CHEST',
    imageUrl: 'assets/images/chest_image.jpg',
  ),
  ExerciseModel(
    name: 'ARM',
    imageUrl: 'assets/images/arm_image.jpg',
  ),
  ExerciseModel(
    name: 'LEG',
    imageUrl: 'assets/images/leg_image.jpg',
  ),
  ExerciseModel(
    name: 'SHOULDER & BACK',
    imageUrl: 'assets/images/shoulder&back_image.jpg',
  ),
  // Add more ImageModel instances as needed
];
