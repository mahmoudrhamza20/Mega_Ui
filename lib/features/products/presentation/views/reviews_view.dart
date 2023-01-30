import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/core/utils/app_router.dart';
import 'package:mega/core/widgets/navigate_to.dart';
import 'package:mega/features/products/presentation/views/widgets/product_review.dart';

import '../../../../constants.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_button.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({Key? key}) : super(key: key);


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
        title: Text('Reviews',style: Styles.textStyle16.copyWith(
          color: const Color(0xff50555C),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                scrollDirection:Axis.vertical ,
                itemBuilder: (context, index) =>const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: ProductReview(),
                ) ,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height *.05,),
             CustomButton(
              onPressed: (){
                navigateTo(context, AppRouter.kWriteReviewView);
              },
              text: 'Write Review',
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
