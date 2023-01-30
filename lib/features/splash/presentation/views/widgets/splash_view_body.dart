import 'package:flutter/material.dart';
import 'package:mega/core/utils/assets.dart';
import 'package:mega/core/widgets/navigate_to.dart';

import '../../../../../core/utils/app_router.dart';



class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToLogin();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose(); //must dispose any controller
  }

  @override
  Widget build(BuildContext context) {
    return Center(child:  SlidingAnimationText(slidingAnimation: slidingAnimation),);
  }
 // bool? login = CacheHelper.getData(key: 'login');
  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
  void navigateToLogin() {
    Future.delayed(const Duration(seconds: 3), () {
        navigateTo(context, AppRouter.kLoginView);
    });
  }

  // void navigateToLoginTest() {
  //  bool? login= CacheHelper.getData(key: 'login');
  //
  //   if(login != null ){
  //     Future.delayed(const Duration(seconds: 3), () {
  //       navigateTo(context, AppRouter.kHomeView);
  //     });
  //   }else{
  //     Future.delayed(const Duration(seconds: 3), () {
  //       navigateTo(context, AppRouter.kLoginView);
  //     });
  //   }
  //
  // }
}

class SlidingAnimationText extends StatelessWidget {
  const SlidingAnimationText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child:  Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Image.asset(AssetsData.logo),
            ),
          );
        });
  }
}