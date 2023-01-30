import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';
import 'my_orders_view_body.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          onPressed: (){GoRouter.of(context).pop();},
          icon: const Icon(Icons.arrow_back_ios_sharp,size:15,color: Color(0xff9098B1),),
        ),
        elevation: 0,
        backgroundColor:Colors.white ,
        title: Text('My Orders',style: Styles.textStyle16.copyWith(
          color: const Color(0xff50555C),
        )),
      ),
      body: const  MyOrdersViewBody(),
    );
  }
}
