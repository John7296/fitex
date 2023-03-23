import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CarouselWidget extends StatelessWidget {
  
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .25,
      child: CarouselSlider(
      items: [
        //1st Image of Slider
        Container(
          // margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4NvbsGatZUeRgAzDMKO17-YvsxpPFRd7n7Q&usqp=CAU"),
              fit: BoxFit.cover,
            ),
          ),
        ),
    
        //2nd Image of Slider
        Container(
          // margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(
                  "https://marketplace.canva.com/EAFIof5T6Is/1/0/1600w/canva-black-yellow-modern-abstract-fitness-flyer-landscape-ZSXvGxSZ2TU.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
    
        //3rd Image of Slider
        Container(
          // margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.goalcast.com/wp-content/uploads/2018/07/Fitness-Muhammad-Ali-Quote.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
    
        //4th Image of Slider
        Container(
          // margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(
                  "https://img.freepik.com/free-psd/horizontal-banner-exercise-gym-training_23-2149041407.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
    
        //5th Image of Slider
        Container(
          // margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(
                  "https://outlookgood.com/wp-content/uploads/2021/01/sport-2264825_640-min.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    
      //Slider Container properties
      options: CarouselOptions(
        height: 180,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 1,
      ),
      ),
    );
  }
}