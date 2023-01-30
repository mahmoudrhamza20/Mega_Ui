

import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomListViewOfProfile extends StatelessWidget {
  const CustomListViewOfProfile({
    Key? key,
    required this.formKey,
    required this.emailController,
    required this.title,
    required this.subTitle, required this.icon, required this.widget,  this.height =  250,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final String title, subTitle;
  final IconData icon ;
  final Widget widget;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListTile(
        onTap: (){
          buildShowModalBottomSheet(context,widget,height);
        },
        title: Text(title,style: Styles.textStyle12.copyWith(
          fontWeight: FontWeight.w700,
          color:const Color(0xff223263),),),
        subtitle:Text(
          subTitle,
          style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w700,
              color: const Color(0xff9098B1)
          ),),
        leading:  Icon(icon,color: kSecondColor,),

        trailing:  const Icon(Icons.arrow_forward_ios,),
        isThreeLine: true,
      ),
    );
  }

  Future<dynamic> buildShowModalBottomSheet(BuildContext context,Widget widget,double  height ) {
    return showModalBottomSheet(context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SizedBox(
            height: height,
            child: Form(
                key: formKey,
                child: widget
            ),
          ),
        );
      },);
  }
}