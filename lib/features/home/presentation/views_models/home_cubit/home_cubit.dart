import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/account/presentation/views/account_view.dart';
import 'package:mega/features/favorite/presentation/views/favorite_view.dart';
import 'package:mega/features/offer/presentation/views/offer_view.dart';
import 'package:mega/features/products/presentation/views/products_view.dart';
import 'package:meta/meta.dart';


part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> bottomsScreens = const [
    ProductsView(),
    AccountView(),
    OfferView(),
    FavoriteView(),
  ];

  void changeBottom(index) {
    currentIndex = index;
    emit(HomeChangeBottomNavBar());
  }

}
