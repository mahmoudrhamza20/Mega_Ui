import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/core/utils/assets.dart';
import 'package:mega/core/utils/styles.dart';
import 'package:mega/core/widgets/custom_button.dart';
import 'package:mega/core/widgets/custom_text_form.dart';
import 'package:mega/features/auth/presentation/views_models/register_cubit/register_cubit.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/navigate_to.dart';

class RegisterViewBody extends StatelessWidget {
  RegisterViewBody({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
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
                  height: 15,
                ),
                Text(
                  'Let’s Get Started',
                  style: Styles.textStyle16.copyWith(
                      color: const Color(0xff223263)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Create an new account',
                  style: Styles.textStyle12.copyWith(
                      color: const Color(0xff9098B1)),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  controller: nameController,
                  hintText: 'Full Name',
                  prefix: Icons.person,
                  inputType: TextInputType.name,
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'Name is required';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 5,),
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
                const SizedBox(height: 5,),
                CustomTextFormField(
                  controller: phoneController,
                  hintText: 'Your Phone',
                  prefix: Icons.phone,
                  inputType: TextInputType.phone,
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'phone number is required';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 5,),
                CustomTextFormField(
                  suffixPressed:() {RegisterCubit.get(context).changePasswordVisibility();},
                  suffix: RegisterCubit.get(context).suffix,
                  isPassword: RegisterCubit.get(context).isPasswordShown,
                  controller: passwordController,
                  hintText: 'Password',
                  prefix:Icons.lock_outline_rounded,
                  inputType: TextInputType.visiblePassword,
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'Your Password Is Required';
                    }
                    return null;
                  },
                ),
                const SizedBox(height:5,),
                CustomTextFormField (
                  suffixPressed:() {RegisterCubit.get(context).changePasswordVisibility();},
                  suffix: RegisterCubit.get(context).suffix,
                  isPassword: RegisterCubit.get(context).isPasswordShown,
                  controller:confirmPasswordController ,
                  hintText: 'Confirm Password',
                  prefix: Icons.lock_outline_rounded,
                  inputType: TextInputType.visiblePassword,
                  validator: (data) {
                    if (data!.isEmpty ) {
                      return ' Your Password Is Required';
                    }
                    else if (passwordController.text != confirmPasswordController.text){
                      return ' Your Password should be same';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10,),
                CustomButton(text: 'Sign Up',
                    textColor: Colors.white,
                    backgroundColor: kPrimaryColor,
                    onPressed: () {
                      if (formKey.currentState!.validate() && passwordController.text == confirmPasswordController.text) {
                        navigateTo(context, AppRouter.kHomeView);
                      }
                    }
                ),
                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('have a account? ',
                      style: Styles.textStyle12.copyWith(
                          color: const Color(0xff9098B1)),),
                    InkWell(
                        onTap:(){
                          navigateAndFinish(context, AppRouter.kLoginView);
                        },
                        child: Text('Sign In ',style: Styles.textStyle14.copyWith(color: kPrimaryColor),)),
                  ],
                ),

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


