import 'package:flutter/material.dart';

import '../../../../util/custom_fonts.dart';

class BaseProductDetail extends StatelessWidget {
  const BaseProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingText(text: 'Beauty'),
        SizedBox(height: 10),
        Text('Fashion', style: TextStyle(fontSize: 18.0)),
        Text('Electronics', style: TextStyle(fontSize: 18.0)),
        Row(
          children: [
            Icon(Icons.star, size: 50.0, color: Colors.amber),
            Text('4.5', style: TextStyle(fontSize: 18.0)),
            SizedBox(width: 40.0),
            Text('100 reviews', style: TextStyle(fontSize: 18.0)),
          ],
        ),
        Text(
          "₹199.99",
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Icon(Icons.sell),
            SizedBox(width: 10.0),
            Text('20% off', style: TextStyle(fontSize: 18.0)),
          ],
        ),
      ],
    );
  }
}
