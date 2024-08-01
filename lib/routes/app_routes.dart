
import 'package:elbit_ui/Screens/Main%20Screens/productDetails/product_Details.dart';
import 'package:elbit_ui/Screens/Search/widget/app_navigation_screen.dart';
import 'package:elbit_ui/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

import '../Screens/Main Screens/Orders/Succesfullyconfirm.dart';
import '../Screens/Main Screens/Cart/shopping_cart_bottomsheet.dart';
import '../Screens/Main Screens/Home/home_Page_screen.dart';
import '../Screens/Search/search_container_screen.dart';
import '../Screens/auth/forgot_password_bottomsheet.dart';
import '../Screens/auth/login_screen.dart';
import '../Screens/auth/sign_up_screen.dart';
import '../Screens/location_screen.dart';
import '../Screens/onboarding/onboarding_one_screen.dart';
import '../Screens/onboarding/onboarding_three_screen.dart';
import '../Screens/onboarding/onboarding_two_screen.dart';




class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String locationScreen = '/location_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String checkoutTwoScreen = '/checkout_two_screen';

  static const String checkoutThreeScreen = '/checkout_three_screen';
  static const String productPageScreen = '/product_page_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String shoppingCartBottomsheet = '/shoppingCartBottomsheet';
  static const String forgotPasswordBottomsheet = '/forgotPasswordBottomsheet';
  static const String searchPage = '/search_page';

  static const String searchContainerScreen = '/search_container_screen';




  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    signUpScreen: (context) => SignUpScreen(),
    loginScreen: (context) => LoginScreen(),
    locationScreen: (context) => LocationScreen(),
    homeContainerScreen: (context) => HomePageScreen(),
    checkoutTwoScreen: (context) => Succesfullyconfirm(),
    // checkoutThreeScreen: (context) => CheckoutThreeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    productPageScreen: (context) => ProductPageScreen(),
    shoppingCartBottomsheet: (context) => ShoppingCartBottomsheet(),
    forgotPasswordBottomsheet: (context) => ForgotPasswordBottomsheet(),
    searchContainerScreen: (context) => SearchContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()


  };
}
