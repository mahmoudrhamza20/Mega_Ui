

import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/navigate_to.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:CartViewBody() ,
    );
  }
}

class CartViewBody extends StatelessWidget {
  const CartViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('No Product Found',style: Styles.textStyle24.copyWith(color:const Color(0xff223263)),),
          const SizedBox(height: 45,),
          CustomButton(
            onPressed: (){
              navigateTo(context, AppRouter.kHomeView);
            },
            text: 'Add Product ',
            textColor: Colors.white,
            backgroundColor: kSecondColor,
          ),
        ],
      ),
    );
  }
}
