import 'package:flutter/material.dart';
import 'package:mega/core/utils/assets.dart';
import 'package:mega/core/utils/styles.dart';
import 'package:mega/core/widgets/custom_button.dart';
import 'package:mega/core/widgets/custom_text_form.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/navigate_to.dart';

class ResetPasswordViewBody extends StatelessWidget {
   ResetPasswordViewBody({Key? key}) : super(key: key);
  final TextEditingController rePasswordController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Form(
        key: formKey,
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
                  'Reset Password',
                  style: Styles.textStyle16.copyWith(
                      color: const Color(0xff223263)),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  isPassword: true,
                  controller: passwordController,
                  hintText: 'Password',
                  prefix: Icons.lock_outline_rounded,
                  suffix: Icons.visibility_outlined,
                  inputType: TextInputType.visiblePassword,
                  validator: (data) {
                    if (data!.isEmpty) {
                      return ' Your Password Is Required';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 22,),
                CustomTextFormField(
                  isPassword: true,
                  controller: rePasswordController,
                  hintText: 'confirm password',
                  prefix: Icons.lock_outline_rounded,
                  suffix: Icons.visibility_outlined,
                  inputType: TextInputType.visiblePassword,
                  validator: (data) {
                    if (data!.isEmpty ) {
                      return ' Your Password Is Required';
                    }
                   else if (passwordController.text != rePasswordController.text){
                      return ' Your Password should be same';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 36,),
                CustomButton(
                    text: 'Confirm',
                    textColor: Colors.white,
                    backgroundColor: kPrimaryColor,
                    onPressed: () {
                      if (formKey.currentState!.validate() && passwordController.text == rePasswordController.text) {
                        navigateTo(context, AppRouter.kHomeView);
                      }
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


