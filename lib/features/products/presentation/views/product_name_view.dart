import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/features/products/presentation/views/widgets/product_name_view_body.dart';
import '../../../../core/utils/styles.dart';

class ProductNameView extends StatelessWidget {
  const ProductNameView({Key? key}) : super(key: key);

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
        title: Text('Product Name',maxLines: 2,style: Styles.textStyle16.copyWith(
          color: const Color(0xff50555C),
          overflow: TextOverflow.ellipsis,
        )),
      ),
      body: const ProductNameViewBody(),
    );
  }
}
