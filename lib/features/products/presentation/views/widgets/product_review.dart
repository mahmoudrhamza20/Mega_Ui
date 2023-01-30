
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_rating_bar.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 23,
              child: Image.asset('assets/images/Profile.png'),
            ),
            const SizedBox(width: 10,),
            Column(
              children: [
                Text(
                  'James Lawson',
                  style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff223263)
                  ),
                ),
               const CustomRatingBar(),
              ],
            )
          ],
        ),
        const SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text('air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
            maxLines: 4 ,style: Styles.textStyle12.copyWith(
              color:const  Color(0xff9098B1),
              overflow: TextOverflow.ellipsis,
            ),),
        ),
        const SizedBox(height: 10,),
        Text(DateFormat.yMMMMEEEEd().format(DateTime.now()),style: Styles.textStyle12.copyWith(fontSize:10,color: const Color(0xff9098B1)),),

      ],
    );
  }
}