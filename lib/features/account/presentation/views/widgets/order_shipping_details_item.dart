import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/styles.dart';

class OrderShippingDetailsItem extends StatelessWidget {
  const OrderShippingDetailsItem({Key? key}) : super(key: key);

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
                Text('Date Shipping',style:Styles.textStyle12.copyWith(color:const Color(0xff9098B1),overflow: TextOverflow.ellipsis) ,),
                const Spacer(),
                Text(DateFormat.yMMMMEEEEd().format(DateTime.now()),style: Styles.textStyle12.copyWith(color: const Color(0xff223263)),),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text('Shipping',style:Styles.textStyle12.copyWith(color:const Color(0xff9098B1)) ,),
                const Spacer(),
                Text('POS Regular',style:Styles.textStyle12.copyWith(color:const Color(0xff223263)) ,),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text('No. Resi',style:Styles.textStyle12.copyWith(color:const Color(0xff9098B1)) ,),
                const Spacer(),
                Text('000192848573',style:Styles.textStyle12.copyWith(color:const Color(0xff223263)) ,),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text('Address',style:Styles.textStyle12.copyWith(color:const Color(0xff9098B1)) ,),
                const Spacer(),
                const SizedBox(width: 15,),
                Text('2727 New Owerri, Owerri,',maxLines:2,style:Styles.textStyle12.copyWith(color:const Color(0xff223263),overflow: TextOverflow.ellipsis) ,),
              ],
            ),
          ],
        ),
      ),

    );
  }
}