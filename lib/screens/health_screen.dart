import 'package:fitex/screens/home_screen.dart';
import 'package:fitex/utils/constants.dart';
import 'package:fitex/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HealthOverviewScreen extends StatelessWidget {
  HealthOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff151718),
        appBar: AppBar(
          backgroundColor: kAppBar,
          centerTitle: true,
          title: Text("Health Overview"),
          // leading: Icon(Icons.menu),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                divider(10),
                ProfileWidget(
                  text: 'Your Daily \nHealth Statistics..',
                  height: size.height * .15,
                  image: 'assets/images/health_image.png',
                ),
                divider(10),
                Container(
                  height: size.height*.52,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          healthCard(size,"assets/images/pie_chart.png","8k Steps\nCompleted"),
                          healthCard(size,"assets/images/heart_beat.png","\n78 BPM"),
                        ],
                      ),
                      Row(
                        children: [
                          healthCard(size,"assets/images/drink_water.png","\n2.1litre"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget healthCard(Size size,String image, String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xff1e2021),
      ),
      height: size.height * .25,
      width: size.width * .45,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        SizedBox(
          height: size.height*.10,
          child: Image.asset(image)),
          Text(text,style: TextStyle(color: Colors.white,fontSize: 25),)
          ],
        ),
      ),
    );
  }
}
