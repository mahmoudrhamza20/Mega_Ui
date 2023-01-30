
import 'package:flutter/material.dart';
import 'package:mega/core/utils/app_router.dart';
import 'package:mega/core/widgets/navigate_to.dart';
import '../../../../../core/utils/styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        navigateTo(context, AppRouter.kCategoryNameView);
      },
      child: SizedBox(
        height: 50,
        width: 60,
        child: Column(
          children:  [
            CircleAvatar(
              radius: 30,
              child: ClipRRect(borderRadius: BorderRadius.circular(50),
                  child: Image.asset('assets/images/categories.png',fit: BoxFit.fill,width: 60,height: 60,)),
            ),
            Text('Category',
              maxLines: 2,
              style: Styles.textStyle12.copyWith(
                overflow: TextOverflow.ellipsis
            ),
            ),
            Text('Name',style: Styles.textStyle12.copyWith(
                overflow: TextOverflow.ellipsis
            ),
            ),
          ],
        ),
      ),
    );
  }
}