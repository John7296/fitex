import 'package:fitex/utils/constants.dart';
import 'package:flutter/material.dart';

class HorizontalCardWidget extends StatelessWidget {
  HorizontalCardWidget(
      {required this.title, required this.image, required this.buttonAction});
  final String title;
  final String image;
  final void Function() buttonAction;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: buttonAction,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        height: size.height * .25,
        width: size.width * .45,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xff1e2021).withOpacity(.7),
                ),
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: kFontWeight_SB,letterSpacing: 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
