import 'package:flutter/material.dart';

final String poppinsRegular = 'PoppinsRegular';
final String poppinsMedium = 'PoppinsMedium';
final String poppinsSemiBold = 'PoppinsSemiBold';

TextStyle poppinsRegularStyle({
  double fontSize = 14,
  Color color = Colors.black,
}) {
  return TextStyle(
    fontFamily: poppinsRegular,
    fontSize: fontSize,
    color: color,
  );
}

class RegularText extends StatelessWidget {
  final String text;
  const RegularText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: poppinsRegularStyle(fontSize: 16.0, color: Colors.grey),
    );
  }
}

class HeadingText extends StatelessWidget {
  final String text;
  const HeadingText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 22.0,
        color: Colors.black,
        fontFamily: poppinsSemiBold,
      ),
    );
  }
}
