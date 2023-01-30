
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xffE5E5E5))),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ahmad Khaidir',style:Styles.textStyle14.copyWith(color:const Color(0xff223263),overflow: TextOverflow.ellipsis) ,),
            const SizedBox(height: 15,),
            Text('3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',maxLines:2,style:Styles.textStyle12.copyWith(color:const Color(0xff9098B1),overflow: TextOverflow.ellipsis) ,),
            const SizedBox(height: 15,),
            Text('+99 1234567890',style:Styles.textStyle12.copyWith(color:const Color(0xff9098B1),overflow: TextOverflow.ellipsis) ,),
            const SizedBox(height: 15,),
            Row(
              children: [
                GestureDetector(
                  onTap:(){},
                  child: Container(
                    width:60,
                    height:50,
                    decoration: BoxDecoration(
                      color:const Color(0xff50555C),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(child: Text('Edit',style: Styles.textStyle14.copyWith(color: Colors.white),)),
                  ),
                ),
                const SizedBox(width: 15,),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.delete_outline,size: 30,color: Color(0xff9098B1)),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}