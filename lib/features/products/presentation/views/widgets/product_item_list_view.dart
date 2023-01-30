
import 'package:flutter/material.dart';
import 'package:mega/features/products/presentation/views/widgets/product_item.dart';

class ProductItemListView extends StatelessWidget {
  const ProductItemListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 7,
        scrollDirection:Axis.horizontal ,
        itemBuilder: (context, index) =>const Padding(
          padding: EdgeInsets.only(right: 10),
          child: ProductItem(),
        ) ,
      ),
    );
  }
}