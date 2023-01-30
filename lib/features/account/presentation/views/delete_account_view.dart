import 'package:flutter/material.dart';
import 'package:mega/features/account/presentation/views/widgets/delete_account_view_body.dart';


class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:DeleteAccountViewBody() ,
    );

  }
}
