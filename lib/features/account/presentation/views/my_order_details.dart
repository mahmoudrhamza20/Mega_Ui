import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/features/account/presentation/views/widgets/my_order_details_body.dart';
import '../../../../core/utils/styles.dart';

class MyOrderDetailsView extends StatelessWidget {
  const MyOrderDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            size: 15,
            color: Color(0xff9098B1),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Order Details',
            style: Styles.textStyle16.copyWith(
              color: const Color(0xff50555C),
            )),
      ),
      body: const MyOrderDetailsBody(),
    );
  }
}






