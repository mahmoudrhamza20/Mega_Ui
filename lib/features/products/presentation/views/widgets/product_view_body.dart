
import 'package:flutter/material.dart';
import 'package:mega/core/utils/styles.dart';
import 'package:mega/features/products/presentation/views/widgets/product_item.dart';
import 'package:mega/features/products/presentation/views/widgets/product_item_list_view.dart';
import 'category_item.dart';
import 'custom_slider.dart';
import 'custom_app_bar.dart';

class ProductsViewBody extends StatelessWidget {
  const ProductsViewBody({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16 ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
             const CustomAppBar(),
              CustomSlider(),
             const SizedBox(height: 16,),
             SizedBox(
               height: 105,
               child: ListView.builder(
                 physics: const BouncingScrollPhysics(),
                // shrinkWrap: true,
                 itemCount: 7,
                   scrollDirection:Axis.horizontal ,
                   itemBuilder: (context, index) =>const Padding(
                     padding: EdgeInsets.only(right: 6),
                     child: CategoryItem(),
                   ) ,
               ),
             ),
              CustomSlider(height: 90,),
             const SizedBox(height: 15,),
              Text('Flash Sale',style: Styles.textStyle14.copyWith(
                 color:const Color(0xffED1C24),
                shadows: [
                 const Shadow(color: Color.fromRGBO(0, 0, 0, 0.25),
                   offset: Offset(0, 3),
                   blurRadius: 2
                 )
                ]
              ),),
              const SizedBox(height: 10,),
              //const ProductItem(),
              const ProductItemListView(),
              Text(
                ' You May Like',
                style: Styles.textStyle14.copyWith(
                    color: const Color(0xff50555C)
                ),
              ),
             const SizedBox(height: 6,),
              GridView.builder(
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
            ],
          ),
        ),
      ),
    );
  }
}




