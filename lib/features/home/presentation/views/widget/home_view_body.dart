
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../views_models/home_cubit/home_cubit.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Scaffold(
          appBar: null,
          body:cubit.bottomsScreens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            currentIndex:cubit.currentIndex ,
            onTap: (index){
              cubit.changeBottom(index);
            },
            items:const [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: 'Account'),
              BottomNavigationBarItem(icon: Icon(Icons.sell),label: 'Offer'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: 'Favorites'),

            ],
          ) ,
        );
      },
    );
  }
}
