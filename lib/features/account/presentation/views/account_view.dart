
import 'package:flutter/material.dart';
import 'package:mega/features/account/presentation/views/widgets/account_view_body.dart';

import '../../../../core/utils/styles.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        elevation: 0,
        backgroundColor:Colors.white ,
        title: Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Text('Account',style: Styles.textStyle16.copyWith(
            color: const Color(0xff50555C),
          )),
        ),
      ),
      body:const AccountViewBody(),
    );
  }
}
