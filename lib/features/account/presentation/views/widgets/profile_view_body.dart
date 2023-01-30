import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form.dart';
import 'custom_list_view_of_profile.dart';

class ProfileViewBody extends StatelessWidget {
   ProfileViewBody({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController reNewPasswordController = TextEditingController();
 final  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:  [
          const Divider(
            color: Color(0xffEBF0FF),
            height: 1,
            thickness: 1,
          ),
          const SizedBox(height: 22,),
          Row(
            children: [
              CircleAvatar(
                radius: 23,
                child: Image.asset('assets/images/Profile.png'),
              ),
              const SizedBox(width: 10,),
              Column(
                children: [
                  Text(
                    'Dominic Ovo',
                    style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff223263)
                    ),
                  ),
                  Text(
                    '@Dominic_ovo',
                    style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w700,
                        color: const Color(0xff9098B1)
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 22,),
          CustomListViewOfProfile(
            widget: GenderBottomSheet(genderController: genderController,formKey:formKey ) ,
              formKey: formKey,
              emailController: genderController,
            icon:Icons.female_outlined ,
            title: 'Gender',
            subTitle:'Female' ,
          ),
          CustomListViewOfProfile(
            widget: BirthdayBottomSheet(formKey: formKey,birthdayController: birthdayController),
              formKey: formKey,
              emailController: birthdayController,
            icon:Icons.cake ,
            title: 'Birthday',
            subTitle:'20-2-1999' ,
          ),
          CustomListViewOfProfile(
          widget: EmailBottomSheet(emailController: emailController,formKey:formKey ) ,
            formKey: formKey,
            emailController: emailController,
            icon:Icons.email_outlined ,
            title: 'Email',
            subTitle: 'rex4dom@gmail.com' ,
          ),
          CustomListViewOfProfile(
          widget: PhoneBottomSheet(formKey: formKey,phoneController: phoneController),
            formKey: formKey,
            emailController: emailController,
            icon:Icons.phone_android_outlined ,
            title: 'Phone Number',
            subTitle:'01017397522' ,
          ),
          CustomListViewOfProfile(
            widget: PasswordBottomSheet(
              formKey: formKey,
              oldPasswordController:oldPasswordController,
              newPasswordController: newPasswordController,
              reNewPasswordController: reNewPasswordController,
            ),
            formKey: formKey,height: MediaQuery.of(context).size.height*.8,
            emailController: emailController,
            icon:Icons.lock_outline_rounded ,
            title: 'Change password',
            subTitle:'***********' ,
          ),
          // CustomListViewOfProfile(
          //   formKey: formKey,
          //   emailController: emailController,
          //   icon:Icons.language_outlined ,
          //   title: 'Change Language',
          //   subTitle:'' ,
          // ),
        ],

      ),
    );
  }
}



class EmailBottomSheet extends StatelessWidget {
  const EmailBottomSheet({
    Key? key,
    required this.emailController,
    required this.formKey,
  }) : super(key: key);

  final TextEditingController emailController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40,),
        Text('Change Email',style: Styles.textStyle14.copyWith(color: const Color(0xff223263)),),
        const SizedBox(height: 12,),
        CustomTextFormField(
          controller: emailController,
          hintText: 'rex4dom@gmail.com',
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
        Text(' We Will Send verification to your New Email',style: Styles.textStyle12.copyWith(color: const Color(0xff50555C)),),
        const Spacer(),
        CustomButton(text: 'Save',
            textColor: Colors.white,
            backgroundColor: kSecondColor,
            onPressed: () {
              if (formKey.currentState!.validate()) {
               GoRouter.of(context).pop();
              }
            }
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
class PhoneBottomSheet extends StatelessWidget {
  const PhoneBottomSheet({
    Key? key,
    required this.phoneController,
    required this.formKey,
  }) : super(key: key);

  final TextEditingController phoneController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40,),
        Text('Phone Number',style: Styles.textStyle14.copyWith(color: const Color(0xff223263)),),
        const SizedBox(height: 12,),
        CustomTextFormField(
          controller: phoneController,
          hintText: '01017397522',
          prefix: Icons.phone_android_outlined,
          inputType: TextInputType.phone,
          validator: (data) {
            if (data!.isEmpty) {
              return 'phone is required';
            }
            return null;
          },
        ),
        const Spacer(),
        CustomButton(text: 'Save',
            textColor: Colors.white,
            backgroundColor: kSecondColor,
            onPressed: () {
              if (formKey.currentState!.validate()) {
               GoRouter.of(context).pop();
              }
            }
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
class GenderBottomSheet extends StatelessWidget {
  const GenderBottomSheet({
    Key? key,
    required this.genderController,
    required this.formKey,
  }) : super(key: key);

  final TextEditingController genderController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40,),
        Text('Gender',style: Styles.textStyle14.copyWith(color: const Color(0xff223263)),),
        const SizedBox(height: 12,),
        CustomTextFormField(
          controller: genderController,
          hintText: 'Female',
          prefix: Icons.female_outlined,
          inputType: TextInputType.text,
          validator: (data) {
            if (data!.isEmpty) {
              return 'gender is required';
            }
            return null;
          },
        ),
        const Spacer(),
        CustomButton(text: 'Save',
            textColor: Colors.white,
            backgroundColor: kSecondColor,
            onPressed: () {
              if (formKey.currentState!.validate()) {
               GoRouter.of(context).pop();
              }
            }
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
class BirthdayBottomSheet extends StatelessWidget {
  const BirthdayBottomSheet({
    Key? key,
    required this.birthdayController,
    required this.formKey,
  }) : super(key: key);

  final TextEditingController birthdayController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40,),
        Text('Birthday',style: Styles.textStyle14.copyWith(color: const Color(0xff223263)),),
        const SizedBox(height: 12,),
        CustomTextFormField(
          controller: birthdayController,
          hintText: '20-2-1999',
          prefix: Icons.cake,
          inputType: TextInputType.number,
          validator: (data) {
            if (data!.isEmpty) {
              return 'birthday is required';
            }
            return null;
          },
        ),
        const Spacer(),
        CustomButton(text: 'Save',
            textColor: Colors.white,
            backgroundColor: kSecondColor,
            onPressed: () {
              if (formKey.currentState!.validate()) {
               GoRouter.of(context).pop();
              }
            }
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
class PasswordBottomSheet extends StatelessWidget {
  const PasswordBottomSheet({
    Key? key, required this.oldPasswordController, required this.newPasswordController, required this.reNewPasswordController, required this.formKey,

  }) : super(key: key);

  final TextEditingController oldPasswordController;
  final TextEditingController newPasswordController;
  final TextEditingController reNewPasswordController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40,),
        Text('Old Password',style: Styles.textStyle14.copyWith(color: const Color(0xff223263)),),
        const SizedBox(height: 12,),
        CustomTextFormField(
          isPassword: true,
          controller: oldPasswordController,
          hintText: '**********',
          prefix: Icons.lock_outline_rounded,
          inputType: TextInputType.visiblePassword,
          validator: (data) {
            if (data!.isEmpty) {
              return 'old password is required';
            }
            return null;
          },
        ),
        const SizedBox(height: 12,),
        Text('New Password',style: Styles.textStyle14.copyWith(color: const Color(0xff223263)),),
        const SizedBox(height: 12,),
        CustomTextFormField(
          controller: newPasswordController,
          hintText: '*****',
          prefix: Icons.lock_outline_rounded,
          inputType: TextInputType.visiblePassword,
          validator: (data) {
            if (data!.isEmpty) {
              return 'new password is required';
            }
            return null;
          },
        ),
        const SizedBox(height: 12,),
        Text('New Password Again',style: Styles.textStyle14.copyWith(color: const Color(0xff223263)),),
        const SizedBox(height: 12,),
        CustomTextFormField(
          controller: reNewPasswordController,
          hintText: '*****',
          prefix: Icons.lock_outline_rounded,
          inputType: TextInputType.visiblePassword,
          validator: (data) {
            if (data!.isEmpty) {
              return ' should be the same ';
            }
            return null;
          },
        ),
        const SizedBox(height: 12,),
        const Spacer(),
        CustomButton(text: 'Save',
            textColor: Colors.white,
            backgroundColor: kSecondColor,
            onPressed: () {
              if (formKey.currentState!.validate()) {
               GoRouter.of(context).pop();
              }
            }
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
