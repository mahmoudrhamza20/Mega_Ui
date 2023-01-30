
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 1,
        width: 134,
        color: Colors.grey[300],),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Text('OR', style: Styles.textStyle14.copyWith(
          color: const Color(0xff9098B1),
        ),),
      ),
      Container(
        height: 1,
        width: 134,
        color: Colors.grey[300],),
    ],);
  }
}