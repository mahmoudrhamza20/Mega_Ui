import 'package:flutter/material.dart';
import 'package:mega/constants.dart';
import 'package:mega/core/widgets/custom_button.dart';
import 'package:mega/features/products/presentation/views/widgets/product_item_list_view.dart';
import 'package:mega/features/products/presentation/views/widgets/product_review.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/navigate_to.dart';
import 'custom_rating_bar.dart';


class ProductNameViewBody extends StatelessWidget {
  const ProductNameViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 180,
              child: Image.asset('assets/images/product.png',fit: BoxFit.fill,),
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                Text(
                  'Product Name will display here',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff223263)
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Color(0xff9098B1),
                    size: 20,
                  ),
                ),
              ],
            ),
         const CustomRatingBar(),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  '299,43\$',
                  style: Styles.textStyle12.copyWith(
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff50555C)
                  ),
                ),
                const Spacer(),
                Text(
                    '534,33\$',
                    style: Styles.textStyle12.copyWith(
                      color: const Color(0xff9098B1),
                      fontSize: 10,
                      decoration: TextDecoration.lineThrough,
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                    '24% Off ',
                    style: Styles.textStyle16.copyWith(
                      color: const Color(0xffFB7181),
                      fontSize: 10,

                    )
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Text(
              'Details',
              style: Styles.textStyle14.copyWith(
                  color: const Color(0xffF57E2E)
              ),
            ),
            Text('The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.',
              maxLines: 4 ,style: Styles.textStyle12.copyWith(
                  color:const  Color(0xff9098B1),
                overflow: TextOverflow.ellipsis,
              ),),
           const SizedBox(height: 15,),
            Row(
              children: [
                Text(
                  'Review Product',
                  style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff223263)
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: (){
                    navigateTo(context, AppRouter.kReviewsView);
                  },
                  child: Text(
                    'See More',
                    style: Styles.textStyle12.copyWith(
                      color: const Color(0xff898A8D),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8,),
            const ProductReview(),
            const SizedBox(height: 15,),
            Text(
              'You Might Also Like',
              style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff223263)
              ),
            ),
            const SizedBox(height: 10,),
           const ProductItemListView(),
             SizedBox(height: MediaQuery.of(context).size.height *.05,),
            const CustomButton(
                text: 'Add To Cart',
                textColor: Colors.white,
                backgroundColor: kSecondColor,
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}





