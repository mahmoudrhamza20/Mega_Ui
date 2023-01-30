import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:mega/features/auth/presentation/views_models/login_cubit/login_cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: BlocProvider(
          create: (context) => LoginCubit(),
          child: LoginViewBody(),
        ))
    );
  }
}
