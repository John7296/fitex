import 'package:fitex/screens/start_workout.dart';
import 'package:fitex/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ViewPlanDetailsScreen extends StatefulWidget {
  ViewPlanDetailsScreen({super.key});

  @override
  State<ViewPlanDetailsScreen> createState() => _ViewPlanDetailsScreenState();
}

class _ViewPlanDetailsScreenState extends State<ViewPlanDetailsScreen> {
  TextEditingController repsController = TextEditingController();
  TextEditingController setsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var box = Hive.box('selectedItems');
    List value = box.get('items');
    print(value[0]);

    //  var box = Hive.box('selectedItems');
    //  var exerciseList = box.get();

    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff151718),
        appBar: AppBar(
          backgroundColor: kAppBar,
          centerTitle: true,
          title: Text("My Workout Plan"),
          // leading: IconButton(
          //     onPressed: () {
          //     },
          //     icon: Icon(Icons.arrow_back_ios_new_sharp)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              // TextField(
              //   controller: repsController,
              //   decoration: InputDecoration(
              //     labelText: 'Reps',
              //   ),
              // ),
              // TextField(
              //   controller: setsController,
              //   decoration: InputDecoration(
              //     labelText: 'Sets',
              //   ),
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //     labelText: 'Interval(Min)',
              //   ),
              // ),
              // ElevatedButton(
              //   onPressed: () {

              //     // Save the entered details
              //     // You can retrieve the values of the text fields like this:
              //     // repsTextFieldController.text
              //     // setsTextFieldController.text
              //     // intervalTextFieldController.text
              //     // Navigator.of(context).pop();
              //   },
              //   child: Text('Start'),
              // ),
              Expanded(
                child: ListView.separated(
                  itemCount: value.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Enter Workout Details'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  TextField(
                                    controller: repsController,
                                    decoration: InputDecoration(
                                      labelText: 'Reps',
                                    ),
                                  ),
                                  TextField(
                                    controller: setsController,
                                    decoration: InputDecoration(
                                      labelText: 'Sets',
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Interval(Min)',
                                    ),
                                  ),
                                ],
                              ),
                              actions: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Cancel'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Save the entered details
                                    // You can retrieve the values of the text fields like this:
                                    // repsTextFieldController.text
                                    // setsTextFieldController.text
                                    // intervalTextFieldController.text
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Add'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      leading: Image.asset('assets/images/full_body.jpg'),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            value[index],
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Reps: ${'10'}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Sets: ${'10'}',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      color: Colors.white,
                    );
                  },
                ),
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => StartWorkoutScreen()));
                      },
                      child: Text('Start Workout')))
            ],
          ),
        ),
      ),
    );
  }
}
