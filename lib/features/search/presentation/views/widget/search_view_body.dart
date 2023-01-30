import 'package:flutter/material.dart';
import 'package:mega/core/utils/assets.dart';
import 'package:mega/core/utils/styles.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/navigate_to.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsData.search),
          const SizedBox(height: 25,),
          Text('No Result Found',style: Styles.textStyle24.copyWith(color:const Color(0xff223263)),),
          const SizedBox(height: 45,),
           CustomButton(
            onPressed: (){
              navigateTo(context, AppRouter.kHomeView);
            },
            text: 'Back to Home',
            textColor: Colors.white,
            backgroundColor: kSecondColor,
          ),
        ],
      ),
    );
  }
}

