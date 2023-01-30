import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../views_models/home_cubit/home_cubit.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Scaffold(
          body:cubit.bottomsScreens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            currentIndex:cubit.currentIndex ,
            onTap: (index){
              cubit.changeBottom(index);
            },
            items:const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: 'Account'),
              BottomNavigationBarItem(icon: Icon(Icons.sell_outlined),label: 'Offer'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: 'Favorites'),
            ],
          ) ,
        );
      },
    );
  }
}
