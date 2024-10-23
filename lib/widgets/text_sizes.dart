import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),);
  }
}

class SubHeading extends StatelessWidget {
  const SubHeading({
    super.key, required this.text,
  });

  final String text;


  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),);
  }
}


class BodyText extends StatelessWidget {
  const BodyText({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 16,),);
  }
}
