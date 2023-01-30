
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/navigate_to.dart';
import 'address_item.dart';

class AddressViewBody extends StatelessWidget {
  const AddressViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics:const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:    [
                const Divider(
                  color: Color(0xffEBF0FF),
                  height: 1,
                  thickness: 1,
                ),
                const SizedBox(height: 22,),
                ListView.builder(
                  shrinkWrap: true,
                  physics:const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: AddressItem(),
                  ),
                ),
                const SizedBox(height: 30,),
                CustomButton(text: 'Add Address',
                    textColor: Colors.white,
                    backgroundColor: kSecondColor,
                    onPressed: () {
                      navigateTo(context, AppRouter.kAddAddressView);
                    }
                ),
                const SizedBox(height: 20,),
              ],
            ),
          )
        ],
      ),
    );
  }
}