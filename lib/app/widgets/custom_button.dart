import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.label,
    required this.height,
    required this.width,
    required this.actionFunction,
    required this.verticalPadding,
    Key? key,
  }) : super(key: key);
  final String label;
  final double height;
  final double width;
  final Function actionFunction;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding),
      child: MaterialButton(
        minWidth: width,
        height: height,
        elevation: 0,
        onPressed: () {
          actionFunction();
        },
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.blue,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          label.toUpperCase(),
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
