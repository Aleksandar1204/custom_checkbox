import 'package:flutter/material.dart';



class CustomCheckBox extends StatefulWidget {
  List<String>? checkboxList;
  final Color borderColor;
  final Color checkIconColor;
  final Color selectedBoxColor;
  final TextStyle? labelTextStyle;
  final double paddingBetweenTitleAndCheckBox;
  final Widget? widgetUnderTheLabel;
  final double checkBoxWidth;
  final double checkBoxHeight;
  final bool multipleChoise;
  final Function(dynamic) onChanged;
  final Icon? checkBoxIcon;
  final double iconSize;
  final double checkBoxSplashRadius;
  final bool clickableLabel;
  final double borderWidth;
  final Color? checkBoxSplashColor;
  final Color? clickableLabelSplashColor;
  final String? textLabel;
  final BorderRadius? borderRadius;
  final BoxShape shape;
  CustomCheckBox(
      {super.key,
        this.checkboxList,
        this.borderColor = Colors.black,
        this.labelTextStyle,
        this.checkIconColor = Colors.black,
        this.selectedBoxColor = Colors.transparent,
        this.paddingBetweenTitleAndCheckBox = 0,
        this.widgetUnderTheLabel,
        this.checkBoxWidth = 15,
        this.checkBoxHeight = 15,
        required this.onChanged,
        required this.multipleChoise,
        this.checkBoxIcon,
        this.iconSize = 1.4,
        this.checkBoxSplashRadius = 10,
        this.clickableLabel = false,
        this.borderWidth = 2.0,
        this.checkBoxSplashColor,
        this.clickableLabelSplashColor,
        this.textLabel,
        this.borderRadius,
        this.shape = BoxShape.rectangle});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  String selected = "";
  List<Map<String, dynamic>> list = [];
  List<String> selectedList = [];
  bool isChecked = false;
  @override
  void initState() {
    super.initState();
    if (widget.checkboxList != null) {
      for (var i = 0; i < widget.checkboxList!.length; i++) {
        list.add({"id": i, "bool": false, "value": widget.checkboxList![i]});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.checkboxList == null && widget.textLabel == null
        ? InkResponse(
      radius: widget.checkBoxSplashRadius, //in order to use this property set the clickableLabel property to false
      splashColor: widget.checkBoxSplashColor,
      onTap: !widget.clickableLabel
          ? () {
        onTap(0);
      }
          : null,
      child: UnconstrainedBox(
        child: Container(
          width: widget.checkBoxWidth,
          height: widget.checkBoxHeight,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isChecked == true ? widget.selectedBoxColor : null,
              border: Border.all(
                color: widget.borderColor,
                width: widget.borderWidth,
              ),
              borderRadius: widget.borderRadius,
              shape: widget.borderRadius == null ? widget.shape : BoxShape.rectangle),
          child: isChecked == true
              ? FittedBox(
            child: Transform.scale(
              scale: widget.iconSize,
              child: widget.checkBoxIcon ??
                  Icon(
                    Icons.check,
                    color: widget.checkIconColor,
                  ),
            ),
          )
              : null,
        ),
      ),
    )
        : widget.checkboxList == null && widget.textLabel != null
        ? InkWell(
      splashColor: widget.clickableLabelSplashColor, //in order to use this property set the clickableLabel property to true
      onTap: widget.clickableLabel
          ? () {
        onTap(0);
      }
          : null,
      child: Row(
        children: [
          InkResponse(
            radius: widget.checkBoxSplashRadius, //in order to use this property set the clickableLabel property to false
            splashColor: widget.checkBoxSplashColor,
            onTap: !widget.clickableLabel
                ? () {
              onTap(0);
            }
                : null,
            child: Container(
              width: widget.checkBoxWidth,
              height: widget.checkBoxHeight,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: isChecked == true ? widget.selectedBoxColor : null,
                  border: Border.all(
                    color: widget.borderColor,
                    width: widget.borderWidth,
                  ),
                  borderRadius: widget.borderRadius,
                  shape: widget.borderRadius == null ? widget.shape : BoxShape.rectangle),
              child: isChecked == true
                  ? FittedBox(
                child: Transform.scale(
                  scale: widget.iconSize,
                  child: widget.checkBoxIcon ??
                      Icon(
                        Icons.check,
                        color: widget.checkIconColor,
                      ),
                ),
              )
                  : null,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: widget.paddingBetweenTitleAndCheckBox),
            child: Wrap(direction: Axis.vertical, spacing: widget.widgetUnderTheLabel == null ? 0 : -5, children: [
              Text(widget.textLabel!, style: widget.labelTextStyle ??const TextStyle()),
              widget.widgetUnderTheLabel ?? const SizedBox(),
            ]),
          ),
        ],
      ),
    )
        : Column(
      children: List.generate(
          list.length,
              (index) => InkWell(
            splashColor: widget.clickableLabelSplashColor, //in order to use this property set the clickableLabel property to true
            onTap: widget.clickableLabel
                ? () {
              onTap(index);
            }
                : null,
            splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
            child: Row(
              children: [
                InkResponse(
                  radius: widget.checkBoxSplashRadius, //in order to use this property set the clickableLabel property to false
                  splashColor: widget.checkBoxSplashColor,
                  onTap: !widget.clickableLabel
                      ? () {
                    onTap(index);
                  }
                      : null,
                  child: Container(
                    width: widget.checkBoxWidth,
                    height: widget.checkBoxHeight,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: list[index]["bool"] == true ? widget.selectedBoxColor : null,
                        border: Border.all(
                          color: widget.borderColor,
                          width: widget.borderWidth,
                        ),
                        borderRadius: widget.borderRadius,
                        shape: widget.borderRadius == null ? widget.shape : BoxShape.rectangle),
                    child: list[index]["bool"] == true
                        ? FittedBox(
                      child: Transform.scale(
                        scale: widget.iconSize,
                        child: widget.checkBoxIcon ??
                            Icon(
                              Icons.check,
                              color: widget.checkIconColor,
                            ),
                      ),
                    )
                        : null,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: widget.paddingBetweenTitleAndCheckBox),
                  child: Wrap(direction: Axis.vertical, spacing: widget.widgetUnderTheLabel == null ? 0 : -5, children: [
                    Text(list[index]["value"], style: widget.labelTextStyle ??const TextStyle()),
                    widget.widgetUnderTheLabel ?? const SizedBox()
                  ]),
                ),
              ],
            ),
          )),
    );
  }

  onTap(int index) {
    if (widget.checkboxList != null) {
      setState(() {
        selected = list[index]["value"];
        list[index]["bool"] = !list[index]["bool"];

        if (!widget.multipleChoise) {


          for (var i = 0; i < list.length; i++) {
            if (list[i]['bool'] == true && selected != list[i]['value']) {
              list[i]['bool'] = false;
              i = list.length;
            }
          }
          //single string value(comment this if you want a value with list of string)
          if (list[index]["bool"] == false) selected = "";

          //you can change the argument type of this function if you want to send a different value
          widget.onChanged(selected);


        } else {
          if (list[index]["bool"] == true) selectedList.add(selected);
          if (list[index]["bool"] == false) selectedList.remove(selected);
          //if multiple selection is true list of string will be setup as a value
        }
      });
    } else {
      //if the checkbox list is empty a boolean will be set as an argument to onChanged function
      setState(() {
        isChecked = !isChecked;
        widget.onChanged(isChecked);
      });
    }
  }
}
