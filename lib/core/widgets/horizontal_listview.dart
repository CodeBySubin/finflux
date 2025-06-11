import 'package:flutter/material.dart';

class HorizontalListview extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final double height;
  final int length;
  const HorizontalListview({
    super.key,
    required this.height,
    required this.length,
    required this.itemBuilder, required List<Map<String, dynamic>> data,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        itemCount: length,
        scrollDirection: Axis.horizontal,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
