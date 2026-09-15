import 'package:flutter/material.dart';

import '../../../../util/custom_fonts.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [HeadingText(text: 'Product Description')]);
  }
}
