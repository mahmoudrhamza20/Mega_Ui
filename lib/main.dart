import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/home/presentation/views_models/home_cubit/home_cubit.dart';
import 'constants.dart';
import 'core/utils/app_router.dart';
import 'core/utils/cache_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Mega());
  await CacheHelper.init();
}

class Mega extends StatelessWidget {
  const Mega({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp.router(

          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: kPoppins,
              scaffoldBackgroundColor: Colors.white,
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                selectedItemColor: const Color(0xff50555C),
                unselectedItemColor: const Color(0xff50555C).withOpacity(0.7),
                elevation: 0,
                type: BottomNavigationBarType.fixed
              )
          )
      ),
    );
  }
}

