import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/core/utils/styles.dart';
import 'package:mega/features/products/presentation/views/widgets/product_item.dart';

class CategoryNameView extends StatelessWidget {
  const CategoryNameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
       leading: IconButton(
         onPressed: (){GoRouter.of(context).pop();},
         icon: const Icon(Icons.arrow_back_ios_sharp,size:15,color: Color(0xff9098B1),),
       ),
        elevation: 0,
        backgroundColor:Colors.white ,
        title: Text('Category Name',style: Styles.textStyle16.copyWith(
          color: const Color(0xff50555C),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
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
