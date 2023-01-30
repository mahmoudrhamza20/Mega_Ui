import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class ProductDetailsItem extends StatelessWidget {
  const ProductDetailsItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xffE5E5E5),)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset('assets/images/product.png',width: 90,height: 90,),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nike Air Zoom Pegasus 36 Miami',maxLines:2 ,style:Styles.textStyle12.copyWith(color:const Color(0xff223263),fontWeight: FontWeight.w700,overflow: TextOverflow.ellipsis) ,),
                const SizedBox(height: 50,),
                Text('299,43\$',style:Styles.textStyle12.copyWith(fontWeight:FontWeight.w700 ,color:const Color(0xff000000)) ,),
              ],
            ),
          ],
        ),
      ),

    );
  }
}