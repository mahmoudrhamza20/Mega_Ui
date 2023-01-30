import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/core/utils/assets.dart';
import 'package:mega/core/utils/styles.dart';
import 'package:mega/core/widgets/custom_button.dart';
import 'package:mega/core/widgets/custom_text_form.dart';
import 'package:mega/features/auth/presentation/views_models/login_cubit/login_cubit.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/navigate_to.dart';
import 'media_login_button.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
 final  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
  builder: (context, state) {
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
                  'Welcome to MEGA Store',
                  style: Styles.textStyle16.copyWith(
                      color: const Color(0xff223263)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Sign in to continue',
                  style: Styles.textStyle12.copyWith(
                      color: const Color(0xff9098B1)),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  controller: emailController,
                  hintText: 'Your Email',
                  prefix: Icons.email_outlined,
                  inputType: TextInputType.emailAddress,
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'email is required';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8,),
                CustomTextFormField(
                  suffixPressed:() {LoginCubit.get(context).changePasswordVisibility();},
                  suffix: LoginCubit.get(context).suffix,
                  isPassword: LoginCubit.get(context).isPasswordShown,
                  controller: passwordController,
                  hintText: 'Password',
                  prefix: Icons.lock_outline_rounded,
                  inputType: TextInputType.visiblePassword,
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'Oops! Your Password Is Not Correct';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10,),
                CustomButton(text: 'Sign In',
                    textColor: Colors.white,
                    backgroundColor: kPrimaryColor,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        //CacheHelper.saveData(key: 'login', value: true);
                        navigateAndFinish(context, AppRouter.kHomeView);
                      }
                    }
                ),
                const SizedBox(height: 10,),
                const OrDivider(),
                const MediaLoginButton(
                    text: 'Login with Google', image: AssetsData.gmail),
                const SizedBox(height: 8,),
                const MediaLoginButton(
                    text: 'Login with facebook', image: AssetsData.facebook),
                const SizedBox(height: 8,),
                InkWell(
                  onTap:(){
                    navigateTo(context, AppRouter.kForgetPassView);
                  },
                    child: Text('Forgot Password?',style: Styles.textStyle14.copyWith(color: kPrimaryColor),)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t have a account? ',
                      style: Styles.textStyle12.copyWith(
                          color: const Color(0xff9098B1)),),
                    InkWell(
                        onTap:(){
                          navigateTo(context, AppRouter.kRegisterView);
                        },
                        child: Text('Register',style: Styles.textStyle14.copyWith(color: kPrimaryColor),)),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  },
);
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 1,
        width: 134,
        color: Colors.grey[300],),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Text('OR', style: Styles.textStyle14.copyWith(
          color: const Color(0xff9098B1),
        ),),
      ),
      Container(
        height: 1,
        width: 134,
        color: Colors.grey[300],),
    ],);
  }
}

