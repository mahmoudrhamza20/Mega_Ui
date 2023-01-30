import 'package:flutter/material.dart';

import 'package:mega/features/account/presentation/views/widgets/order_item_details.dart';

class MyOrdersViewBody extends StatelessWidget {
  const MyOrdersViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:   [
          const Divider(
            color: Color(0xffEBF0FF),
            height: 1,
            thickness: 1,
          ),
          const SizedBox(height: 22,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: OrderItemDetails(),
              ),
            itemCount: 2,
              physics:const BouncingScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}


