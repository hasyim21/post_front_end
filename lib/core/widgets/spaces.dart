import 'package:flutter/material.dart';

class SpaceHeight extends StatelessWidget {
  final double? height;
  const SpaceHeight({super.key, this.height = 12.0});

  @override
  Widget build(BuildContext context) => SizedBox(height: height);
}

class SpaceWidth extends StatelessWidget {
  final double width;
  const SpaceWidth(this.width, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(width: width);
}
