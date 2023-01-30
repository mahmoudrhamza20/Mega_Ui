
import 'package:flutter/material.dart';
import '../../../../core/utils/styles.dart';
import '../../../products/presentation/views/widgets/product_item.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

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
          child: Text('Favorite List',style: Styles.textStyle16.copyWith(
            color: const Color(0xff50555C),
          )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: 2,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.45,
            crossAxisSpacing: 1.0,
            mainAxisSpacing: 1.0,
          ),
          itemBuilder: (context, index) => const ProductItem(),
        ),
      ) ,
    );
  }
}
