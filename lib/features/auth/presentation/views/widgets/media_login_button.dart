
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class MediaLoginButton extends StatelessWidget {
  const MediaLoginButton({
    Key? key, required this.image, required this.text,
  }) : super(key: key);
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffE5E5E5))
      ),
      child: TextButton(
          onPressed: (){},
          child: Row(
            children: [
              const SizedBox(width: 10,),
              Image.asset(image,height:20,width: 15,),
              const SizedBox(width: 80,),
              Text(text,style: Styles.textStyle14.copyWith(
                  color: const Color(0xff9098B1)
              ),),
            ],
          )
      ),
    );
  }
}