
import 'package:flutter/material.dart';
import 'package:mega/core/utils/assets.dart';
import 'package:mega/core/utils/styles.dart';
import 'package:mega/core/widgets/custom_button.dart';
import 'package:mega/core/widgets/custom_text_form.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/navigate_to.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  ForgetPasswordViewBody({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
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
                  'Forget Password',
                  style: Styles.textStyle16.copyWith(
                      color: const Color(0xff223263)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Add your email to send code',
                  style: Styles.textStyle12.copyWith(
                      color: const Color(0xff9098B1)),
                ),
                const SizedBox(
                  height: 80,
                ),
                CustomTextFormField(
                  controller: emailController,
                  hintText: 'Your Email',
                  prefix: Icons.email_outlined,
                  inputType: TextInputType.emailAddress,
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'email is required to send Verification code';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 30,),
                CustomButton(text: 'SEND',
                    textColor: Colors.white,
                    backgroundColor: kPrimaryColor,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        navigateTo(context, AppRouter.kVerifyCodeView);
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


