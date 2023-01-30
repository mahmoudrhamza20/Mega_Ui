
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/core/utils/styles.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/navigate_to.dart';

class DeleteAccountViewBody extends StatelessWidget {
  const DeleteAccountViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const CircleAvatar(
           radius: 50,
           backgroundColor: Color(0xffFB7181),
           child: Icon(Icons.error,color: Colors.white,size: 35,),
         ),
          const SizedBox(height: 25,),
          Text(' Confirmation',style: Styles.textStyle24.copyWith(color:const Color(0xff223263)),),
          const SizedBox(height: 8,),
          Text(' Are you sure wanna delete your account',style: Styles.textStyle12.copyWith(color:const Color(0xff223263).withOpacity(0.5)),),
          const SizedBox(height: 20,),
          CustomButton(
            onPressed: (){
              navigateAndFinish(context, AppRouter.kRegisterView);
            },
            text: 'Delete',
            textColor: Colors.white,
            backgroundColor: kPrimaryColor,
          ),
          const SizedBox(height: 8,),
          CustomButton(
            onPressed: (){
              GoRouter.of(context).pop();
            },
            text: 'Cancel',
            textColor: Color(0xff9098B1),
            backgroundColor:Colors.white ,
          ),
        ],
      ),
    );
  }
}

