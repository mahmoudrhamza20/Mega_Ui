
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class OrderPaymentDetailsItem extends StatelessWidget {
  const OrderPaymentDetailsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xffE5E5E5))),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Items (2)',style:Styles.textStyle12.copyWith(color:const Color(0xff9098B1),overflow: TextOverflow.ellipsis) ,),
                const Spacer(),
                Text('598.86\$',style:Styles.textStyle12.copyWith(color:const Color(0xff223263)) ,),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text('Shipping',style:Styles.textStyle12.copyWith(color:const Color(0xff9098B1)) ,),
                const Spacer(),
                Text('40.00\$',style:Styles.textStyle12.copyWith(color:const Color(0xff223263)) ,),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text('Import charges ',style:Styles.textStyle12.copyWith(color:const Color(0xff9098B1)) ,),
                const Spacer(),
                Text('128.00\$',style:Styles.textStyle12.copyWith(color:const Color(0xff223263)) ,),
              ],
            ),
            const SizedBox(height: 10,),
            const DottedLine(
              dashColor:Color(0xffEBF0FF) ,
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text('Total Price',style:Styles.textStyle12.copyWith(fontWeight:FontWeight.w700,color:const Color(0xff223263)) ,),
                const Spacer(),
                Text('766.86\$',style:Styles.textStyle12.copyWith(fontWeight:FontWeight.w700,color:const Color(0xff000000)) ,),
              ],
            ),
          ],
        ),
      ),

    );
  }
}