
import 'package:flutter/material.dart';
import 'package:mega/core/utils/assets.dart';
import 'package:mega/core/utils/styles.dart';
import 'package:mega/core/widgets/custom_button.dart';
import '../../../../../constants.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/widgets/navigate_to.dart';


class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 7, left: 50),
                    child: Image.asset(AssetsData.logo),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Verify Your Account',
                    style: Styles.textStyle16.copyWith(
                        color: const Color(0xff223263)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'check your Email',
                    style: Styles.textStyle12.copyWith(
                        color: const Color(0xff9098B1)),
                  ),
                  const SizedBox(
                    height: 160,
                  ),
                  CustomButton(text: 'Verify',
                      textColor: Colors.white,
                      backgroundColor: kPrimaryColor,
                      onPressed: () {
                        navigateTo(context, AppRouter.kResetPassView);
                      }
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


