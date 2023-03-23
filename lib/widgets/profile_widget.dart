import 'package:fitex/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({required this.text, required this.height,required this.image});
  final String text;
  final double height;
  final String image;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xff1e2021),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: kFontWeight_M),
            ),
            Container(
              height: size.height * .10,
              width: size.width * .20,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                // color: Color(0xffF2C94C).withOpacity(0.8),
              ),
            )
          ],
        ),
      ),
    );
  }
}
