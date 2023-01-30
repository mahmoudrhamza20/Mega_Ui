import 'package:flutter/material.dart';
import 'package:mega/core/utils/styles.dart';
import 'package:mega/features/products/presentation/views/widgets/custom_rating_bar.dart';
import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_button.dart';

class WriteReviewViewBody extends StatelessWidget {
   WriteReviewViewBody({Key? key}) : super(key: key);
final TextEditingController reviewController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Please write Overall level of satisfaction with your shipping / Delivery Service',
            style: Styles.textStyle14.copyWith(color: const Color(0xff223263)),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children:  [
              const CustomRatingBar(),
              const SizedBox(
                width: 8,),
              Text('3/4',style: Styles.textStyle14.copyWith(
              color:const Color(0xff9098B1)
            ),)],
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Write Your Review',
            style: Styles.textStyle14.copyWith(color: const Color(0xff223263)),
          ),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            controller: reviewController,
            maxLines: 5,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Write your review here',
              hintStyle: Styles.textStyle12.copyWith(color: const Color(0xff9098B1))
            ),
          ),
          const Spacer(),
           const CustomButton(
            text: 'Send Review ',
            textColor: Colors.white,
            backgroundColor: kSecondColor,
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
