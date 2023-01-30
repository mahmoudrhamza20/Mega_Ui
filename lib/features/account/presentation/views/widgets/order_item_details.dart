
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mega/core/utils/app_router.dart';
import 'package:mega/core/widgets/navigate_to.dart';

import '../../../../../core/utils/styles.dart';

class OrderItemDetails extends StatelessWidget {
  const OrderItemDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navigateTo(context, AppRouter.kMyOrdersDetailsView);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xffE5E5E5))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('LQNSU346JK',maxLines:2,style:Styles.textStyle14.copyWith(color:const Color(0xff223263)) ,),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Text('Order at E-comm :  ',style:Styles.textStyle12.copyWith(color:const Color(0xff9098B1),overflow: TextOverflow.ellipsis) ,),
                  Text(DateFormat.yMMMMEEEEd().format(DateTime.now()),style: Styles.textStyle12.copyWith(fontSize:10,color: const Color(0xff9098B1)),),
                ],
              ),
              const SizedBox(height: 10,),
              const DottedLine(
                dashColor:Color(0xffEBF0FF) ,
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Text('Order Status',style:Styles.textStyle12.copyWith(color:const Color(0xff9098B1)) ,),
                  const Spacer(),
                  Text('Shipping',style:Styles.textStyle12.copyWith(color:const Color(0xff223263)) ,),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Text('Items',style:Styles.textStyle12.copyWith(color:const Color(0xff9098B1)) ,),
                  const Spacer(),
                  Text('2 Items purchased',style:Styles.textStyle12.copyWith(color:const Color(0xff223263)) ,),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Text('Price',style:Styles.textStyle12.copyWith(color:const Color(0xff9098B1)) ,),
                  const Spacer(),
                  Text('299,43\$',style:Styles.textStyle12.copyWith(fontWeight:FontWeight.w700 ,color:const Color(0xff000000)) ,),
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}