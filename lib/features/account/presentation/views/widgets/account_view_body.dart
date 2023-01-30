

import 'package:flutter/material.dart';
import 'package:mega/constants.dart';
import 'package:mega/core/utils/app_router.dart';
import 'package:mega/core/utils/styles.dart';
import 'package:mega/core/widgets/navigate_to.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children:  const [
          Divider(
            color: Color(0xffEBF0FF),
            height: 1,
            thickness: 1,
          ),
          SizedBox(height: 20,),
           CustomListTileOfAccountView(text: 'Profile',icon:Icons.person_outline ,path: AppRouter.kProfileView,),
           CustomListTileOfAccountView(text: 'My Orders',icon:Icons.cases_outlined ,path: AppRouter.kMyOrdersView),
           CustomListTileOfAccountView(text: 'Address',icon:Icons.location_on_outlined ,path: AppRouter.kAddressView),
           CustomListTileOfAccountView(text: 'Log out',icon:Icons.logout , path:  AppRouter.kDeleteAddressView),
           CustomListTileOfAccountView(text: 'Delete Account',icon:Icons.delete_outline ,iconColor:Colors.red ,path:  AppRouter.kDeleteAccountView),
        ],
      ),
    );
  }
}

class CustomListTileOfAccountView extends StatelessWidget {
  const CustomListTileOfAccountView({
    Key? key, required this.text, required this.icon,  this.iconColor =kSecondColor, required this.path,
  }) : super(key: key);
final String text;
final IconData icon ;
final Color iconColor ;
final String path;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        navigateTo(context,path );
      },
      leading: Icon(icon,color: iconColor,),
      title: Text(text,style: Styles.textStyle12.copyWith(
        fontWeight: FontWeight.w700,
        color:const Color(0xff223263),
      ),),
    );
  }
}
