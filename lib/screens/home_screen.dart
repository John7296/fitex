
import 'package:fitex/utils/constants.dart';
import 'package:fitex/widgets/carousel_widget.dart';
import 'package:fitex/widgets/exercise_widget.dart';
import 'package:fitex/widgets/line_chart_widget.dart';
import 'package:fitex/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff151718),
        appBar: AppBar(
          backgroundColor: kAppBar,
          centerTitle: true,
          title: Text("FitWell"),
          leading: Icon(Icons.menu),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                divider(10),
                ProfileWidget(text: "Hey Sam\nyou can do better \ntoday with your goals...", height: size.height*.20, image: 'assets/images/profile_avatar.png',),
                divider(10),
                CarouselWidget(),
                divider(10),
                LineChartWidget(),
                divider(10),
                ExerciseWidget(),
                divider(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget divider(double thickness) {
  return SizedBox(
    height: thickness,
  );
}
