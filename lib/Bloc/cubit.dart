
import 'package:elbit_ui/Bloc/states.dart';
import 'package:elbit_ui/Screens/Main%20Screens/Home/home_Page_screen.dart';
import 'package:elbit_ui/Screens/Main%20Screens/Orders/order.dart';
import 'package:elbit_ui/Screens/Main%20Screens/Profile/profile.dart';
import 'package:elbit_ui/Screens/Main%20Screens/Wishlist/wish.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ElbitCubit extends Cubit<ElbitStates> {
  ElbitCubit() :super(ElbitInitialState());
  static ElbitCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> bottomScreen = [
    HomePageScreen(),
    Order(),
    WishlistScreen(),
    ProfilePage(),

  ];

  List<String> screenName = [
    'About Us',
    'MultiMedia',
    'Home',
    'Notifications',
    'Profile',
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }


}