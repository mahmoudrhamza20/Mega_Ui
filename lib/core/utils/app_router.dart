import 'package:go_router/go_router.dart';
import 'package:mega/features/auth/presentation/views/login_view.dart';
import 'package:mega/features/auth/presentation/views/register_view.dart';
import 'package:mega/features/auth/presentation/views/reset_password_view.dart';
import 'package:mega/features/auth/presentation/views/verify_code_view.dart';
import 'package:mega/features/products/presentation/views/categoty_name_view.dart';
import '../../features/account/presentation/views/address_view.dart';
import '../../features/account/presentation/views/delete_account_view.dart';
import '../../features/account/presentation/views/my_order_details.dart';
import '../../features/account/presentation/views/proile_view.dart';
import '../../features/account/presentation/views/widgets/add_address_view.dart';
import '../../features/account/presentation/views/widgets/delete_address_view.dart';
import '../../features/account/presentation/views/widgets/my_orders_view.dart';
import '../../features/auth/presentation/views/forget_password_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/products/presentation/views/cart_view.dart';
import '../../features/products/presentation/views/product_name_view.dart';
import '../../features/products/presentation/views/reviews_view.dart';
import '../../features/products/presentation/views/write_review_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
 static const kLoginView = '/loginView';
 static const kRegisterView = '/registerView';
 static const kForgetPassView = '/forgetPasswordView';
 static const kVerifyCodeView = '/verifyCodeView';
 static const kResetPassView = '/resetPassView';
 static const kHomeView = '/homeView';
 static const kCategoryNameView = '/categoryNameView';
 static const kProductNameView = '/productNameView';
 static const kReviewsView = '/reviewsView';
 static const kWriteReviewView = '/writeReviewView';
 static const kSearchView = '/searchView';
 static const kProfileView = '/profileView';
 static const kDeleteAccountView = '/deleteAccountView';
 static const kDeleteAddressView = '/deleteAddressView';
 static const kMyOrdersView = '/myOrdersView';
 static const kMyOrdersDetailsView = '/myOrdersDetailsView';
 static const kAddressView = '/addressView';
 static const kAddAddressView = '/addAddressView';
 static const kCartView = '/cartView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kForgetPassView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: kVerifyCodeView,
        builder: (context, state) =>  const VerifyCodeView(),
      ),
      GoRoute(
        path: kResetPassView,
        builder: (context, state) =>  const ResetPasswordView(),
      ),
      GoRoute(
        path: kCategoryNameView,
        builder: (context, state) =>  const CategoryNameView(),
      ),
      GoRoute(
        path: kProductNameView,
        builder: (context, state) =>  const ProductNameView(),
      ),
      GoRoute(
        path: kReviewsView,
        builder: (context, state) =>  const ReviewsView(),
      ),
      GoRoute(
        path: kWriteReviewView,
        builder: (context, state) =>  const WriteReviewView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) =>  const SearchView(),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) =>  const ProfileView(),
      ),
      GoRoute(
        path: kDeleteAccountView,
        builder: (context, state) =>  const DeleteAccountView(),
      ),
      GoRoute(
        path: kDeleteAddressView,
        builder: (context, state) =>  const DeleteAddressView(),
      ),
      GoRoute(
        path: kMyOrdersView,
        builder: (context, state) =>  const MyOrdersView(),
      ),
      GoRoute(
        path: kMyOrdersDetailsView,
        builder: (context, state) =>  const MyOrderDetailsView(),
      ),
      GoRoute(
        path: kAddressView,
        builder: (context, state) =>  const AddressView(),
      ),
      GoRoute(
        path: kAddAddressView,
        builder: (context, state) =>   AddAddressView(),
      ),
      GoRoute(
        path: kCartView,
        builder: (context, state) => const  CartView(),
      ),
    ],
  );
}
