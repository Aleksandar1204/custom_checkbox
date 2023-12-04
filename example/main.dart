import 'package:checkbox_list/checkbox_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom checkbox Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CheckBoxDemo(),
    );
  }
}

class CheckBoxDemo extends StatelessWidget {
  const CheckBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //labeled single choice checkbox
            CustomCheckBox(
              checkBoxWidth: 20,
              checkBoxHeight: 20,
              borderColor: Colors.orange,
              onChanged: (value) {
                print(value);
              },
              multipleChoice: false,
              textLabel: "Value 1",
              labelTextStyle:
                  const TextStyle(color: Colors.black, fontSize: 16),
              paddingBetweenTitleAndCheckBox: 13,
            ),
            //labeled single choice checkbox
            CustomCheckBox(
              checkBoxWidth: 20,
              checkBoxHeight: 20,
              borderColor: Colors.blue,
              onChanged: (value) {
                print(value);
              },
              clickableLabelSplashColor: Colors.blue, //In order to use this property, set clickable label to true
              clickableLabel: true,
              multipleChoice: false,
              textLabel: "Value 2",
              labelTextStyle:
              const TextStyle(color: Colors.black, fontSize: 16),
              paddingBetweenTitleAndCheckBox: 13,
            ),
            //labeled single choice checkbox
            CustomCheckBox(
              checkBoxWidth: 20,
              checkBoxHeight: 20,
              borderColor: Colors.orange,
              onChanged: (value) {
                print(value);
              },
              multipleChoice: false,
              textLabel: "Value 3",
              labelTextStyle:
                  const TextStyle(color: Colors.black, fontSize: 16),
              paddingBetweenTitleAndCheckBox: 13,
              checkBoxSplashColor: Colors.blue,
              checkBoxSplashRadius: 20,
            ),

            //single choice with check box list
            CustomCheckBox(
              checkBoxWidth: 20,
              checkBoxHeight: 20,
              borderColor: Colors.orange,
              onChanged: (value) {
                print(value);
              },
              multipleChoice: false,
              checkboxList: [
                "1",
                "2",
                "3",
                "4"
              ], //setup a list of strings to generate a list of labeled checkboxes
              labelTextStyle:
                  const TextStyle(color: Colors.black, fontSize: 16),
              paddingBetweenTitleAndCheckBox: 13,
            ),
            //multiple choice with check box list
            CustomCheckBox(
              checkBoxWidth: 20,
              checkBoxHeight: 20,
              borderColor: Colors.orange,
              onChanged: (value) {
                print(value);
              },
              multipleChoice: true,
              clickableLabel: true, //for clicking the whole container
              checkboxList: [
                "1",
                "2",
                "3",
                "4"
              ], //setup a list of strings to generate a list of labeled checkboxes
              labelTextStyle:
                  const TextStyle(color: Colors.black, fontSize: 16),
              paddingBetweenTitleAndCheckBox: 13,
            ),
            //single choice with check box list
            CustomCheckBox(
              checkBoxWidth: 20,
              checkBoxHeight: 20,
              borderColor: Colors.green,
              onChanged: (value) {
                print(value);
              },
              shape: BoxShape.circle,
              checkBoxSplashRadius: 15,
              checkBoxSplashColor: Colors.yellow,
              multipleChoice: false,
              checkboxList: [
                "1",
                "2",
                "3",
                "4"
              ], //setup a list of strings to generate a list of labeled checkboxes
              labelTextStyle:
                  const TextStyle(color: Colors.black, fontSize: 16),
              paddingBetweenTitleAndCheckBox: 13,
              selectedBoxColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
