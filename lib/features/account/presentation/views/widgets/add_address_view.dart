


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';


class AddAddressView extends StatelessWidget {
   AddAddressView({Key? key}) : super(key: key);

  final GlobalKey<FormState> formKey = GlobalKey();
   final TextEditingController countryController = TextEditingController();
   final TextEditingController streetController = TextEditingController();
   final TextEditingController streetOpController = TextEditingController();
   final TextEditingController stateController = TextEditingController();
   final TextEditingController zipController = TextEditingController();
   final TextEditingController phoneController = TextEditingController();
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
        title: Text('Add Address',
            style: Styles.textStyle16.copyWith(
              color: const Color(0xff50555C),
            )),
      ),
      body:CustomScrollView(
        physics:const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      color: Color(0xffEBF0FF),
                      height: 1,
                      thickness: 1,
                    ),
                    const SizedBox(height: 22,),
                    SectionOfAddAddress(text: 'Country or region', controller: countryController,),
                    const SizedBox(height: 10,),
                    SectionOfAddAddress(text: 'Street Address', controller: streetController,),
                    const SizedBox(height: 10,),
                    SectionOfAddAddress(text: 'Street Address 2 (Optional)', controller: streetOpController,),
                    const SizedBox(height: 10,),
                    SectionOfAddAddress(text: 'State/Province/Region', controller: stateController,),
                    const SizedBox(height: 10,),
                    SectionOfAddAddress(text: 'Zip Code', controller: zipController,),
                    const SizedBox(height: 10,),
                    SectionOfAddAddress(text: 'Phone Number', controller: phoneController,),
                    const SizedBox(height: 30,),
                    CustomButton(text: 'Add Address',
                        textColor: Colors.white,
                        backgroundColor: kSecondColor,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            GoRouter.of(context).pop();
                          }
                        }),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SectionOfAddAddress extends StatelessWidget {
  const SectionOfAddAddress({
    Key? key,
    required this.controller, required this.text,}) : super(key: key);

  final TextEditingController controller;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,style: Styles.textStyle14.copyWith(color: const Color(0xff223263)),),
        const SizedBox(height: 8,),
        TextFormField(
          controller: controller,
          validator: (data){
            if(data!.isEmpty){
              return '$text can\'t be empty';
            }
            return null;
          },
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.only(left: 8),
            border: OutlineInputBorder()
          ),
        ),
      ],
    );
  }
}
