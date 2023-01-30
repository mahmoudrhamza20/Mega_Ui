import 'package:flutter/material.dart';
import 'package:mega/core/utils/app_router.dart';
import 'package:mega/core/widgets/navigate_to.dart';
import '../../../../../core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const  SizedBox(height: 100,),
          Expanded(
            child: Container(
              color: const Color(0xffF3F3F3),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                  prefixIcon: GestureDetector(
                      onTap: () {},
                      child:  IconButton(
                          onPressed: (){
                            navigateTo(context, AppRouter.kSearchView);
                          },
                          icon:const Icon(Icons.search,color: Color(0xff50555C))) ),
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'Search Product',
                  hintStyle: Styles.textStyle12.copyWith(color: const Color(0xff9098B1)),
                ),
              ),
            ),
          ),
          const SizedBox(width: 25,),
          GestureDetector(
            onTap: (){
              navigateTo(context, AppRouter.kCartView);
            },
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children:const [
                Icon((Icons.shopping_cart_outlined),color: Color(0xff9098B1),size: 25,),
                Positioned(
                  left: 12,
                  top: -12,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xffFB7181),
                    child: Text('0',style: TextStyle(color: Colors.white,fontSize: 15),textAlign: TextAlign.center,),
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
