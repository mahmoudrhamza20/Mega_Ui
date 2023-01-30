import 'package:flutter/material.dart';
import 'package:mega/core/utils/app_router.dart';
import 'package:mega/core/widgets/navigate_to.dart';
import '../../../../../core/utils/styles.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navigateTo(context, AppRouter.kProductNameView);
      },
      child: SizedBox(
        width: 130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                const Image(
                  image: AssetImage('assets/images/product.png',),
                ),
                Positioned(
                  left: -10,
                  top: -10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 20,
                    ),

                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                    'FS - Nike Air Max 270 React',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle12.copyWith(
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff223263)
                    ),
                  ),
                  Text(
                    '299,43\$',
                    style: Styles.textStyle12.copyWith(
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff50555C)
                    ),
                  ),
                  Row(
                    children:  [
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

