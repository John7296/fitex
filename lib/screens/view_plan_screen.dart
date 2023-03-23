import 'package:fitex/screens/view_plan_details.dart';
import 'package:fitex/utils/constants.dart';
import 'package:flutter/material.dart';

class ViewPlanScreen extends StatefulWidget {
  ViewPlanScreen({super.key});

  @override
  State<ViewPlanScreen> createState() => _ViewPlanScreenState();
}

class _ViewPlanScreenState extends State<ViewPlanScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff151718),
        appBar: AppBar(
          backgroundColor: kAppBar,
          centerTitle: true,
          title: Text("My Plans"),
          // leading: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlanDetailsScreen(
                        
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: size.height * .10,
                        width: size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // image: DecorationImage(image: AssetImage(myPlanSnap['image'])),
                          color: Color(0xff1e2021),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Fat lose',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: kFontWeight_M),
                              ),
                              IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.white,))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
