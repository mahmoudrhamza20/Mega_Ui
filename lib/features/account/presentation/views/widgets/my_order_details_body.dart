
import 'package:flutter/material.dart';
import 'package:mega/features/account/presentation/views/widgets/product_details_item.dart';

import '../../../../../core/utils/styles.dart';
import 'order_payment_details_item.dart';
import 'order_shipping_details_item.dart';

class MyOrderDetailsBody extends StatelessWidget {
  const MyOrderDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics:const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Divider(
                  color: Color(0xffEBF0FF),
                  height: 1,
                  thickness: 1,
                ),
                const SizedBox(height: 22,),
                Text('Product',style: Styles.textStyle14.copyWith(color:const Color(0xff223263) ),),
                const SizedBox(height: 12,),
                ListView.builder(
                  shrinkWrap: true,
                  physics:const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: ProductDetailsItem(),
                  ),
                ),
                const SizedBox(height: 12,),
                Text('Shipping Details',style: Styles.textStyle14.copyWith(color:const Color(0xff223263) ),),
                const SizedBox(height: 12,),
                const  OrderShippingDetailsItem(),
                const SizedBox(height: 12,),
                Text('Payment Details',style: Styles.textStyle14.copyWith(color:const Color(0xff223263) ),),
                const SizedBox(height: 12,),
                const OrderPaymentDetailsItem(),
                const SizedBox(height: 12,),
              ],
            ),
          )
        ],
      ),
    );
  }
}