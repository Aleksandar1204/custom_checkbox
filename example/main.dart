import 'package:custom_checkbox/custom_checkbox.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Tap Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CheckBoxDemo(),
    );
  }
}

class CheckBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //labeled single checkbox
            CustomCheckBox(
              checkBoxWidth: 20,
              checkBoxHeight: 20,
              borderColor: Colors.orange,
              onChanged: (value) {
                debugPrint(value);
              },
              multipleChoise: false,
              textLabel: "Hello",
              labelTextStyle:const TextStyle(color: Colors.black, fontSize: 16),
              paddingBetweenTitleAndCheckBox: 13,

            ),
            //labeled single checkbox
            CustomCheckBox(
              checkBoxWidth: 20,
              checkBoxHeight: 20,
              borderColor: Colors.orange,
              onChanged: (value) {
                debugPrint(value);
              },
              multipleChoise: false,
              textLabel: "Hello",
              labelTextStyle:const TextStyle(color: Colors.black, fontSize: 16),
              paddingBetweenTitleAndCheckBox: 13,
              checkBoxSplashColor: Colors.blue,
              checkBoxSplashRadius: 20,

            ),

            //single choice
            CustomCheckBox(
              checkBoxWidth: 20,
              checkBoxHeight: 20,
              borderColor: Colors.orange,
              onChanged: (value) {
                debugPrint(value);
              },
              multipleChoise: false,
              checkboxList: ["1" , "2" , "3", "4"], //setup a list of strings to generate a list of labeled checkboxes
              labelTextStyle:const TextStyle(color: Colors.black, fontSize: 16),
              paddingBetweenTitleAndCheckBox: 13,

            ),
            //multiple choice
            CustomCheckBox(
              checkBoxWidth: 20,
              checkBoxHeight: 20,
              borderColor: Colors.orange,
              onChanged: (value) {
                debugPrint(value);
              },
              multipleChoise: true,
              clickableLabel: true, //for clicking the whole container
              checkboxList: ["1" , "2" , "3", "4"], //setup a list of strings to generate a list of labeled checkboxes
              labelTextStyle:const TextStyle(color: Colors.black, fontSize: 16),
              paddingBetweenTitleAndCheckBox: 13,

            ),
            //single choice
            CustomCheckBox(
              checkBoxWidth: 20,
              checkBoxHeight: 20,
              borderColor: Colors.green,
              onChanged: (value) {
                debugPrint(value);
              },
              shape: BoxShape.circle,
              checkBoxSplashRadius: 15,
              checkBoxSplashColor: Colors.yellow,
              multipleChoise: false,
              checkboxList: ["1" , "2" , "3", "4"], //setup a list of strings to generate a list of labeled checkboxes
              labelTextStyle:const TextStyle(color: Colors.black, fontSize: 16),
              paddingBetweenTitleAndCheckBox: 13,
              selectedBoxColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}  