
import 'package:elbit_ui/Bloc/cubit.dart';
import 'package:elbit_ui/core/utils/size_utils.dart';
import 'package:elbit_ui/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.0,),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: BottomAppBar(
           elevation: 0.0,
              shape: const CircularNotchedRectangle(),
              notchMargin: 8.v,
              height: 105,

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40)
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  InkWell(
                    onTap: (){
                      ElbitCubit.get(context)
                          .changeBottomNav(0);
                    },
                    child: Padding(
                              padding:  EdgeInsets.all(8.0),
                              child:Column(
                                children: [ElbitCubit.get(context).currentIndex==0?
                                  Image.asset('assets/images/chome.png'):Image.asset('assets/images/hoooooo.png'),
                                  SizedBox(height: 12.v),
                                  Text(
                                    "Home",
                                    style: CustomTextStyles.titleSmallGray900,
                                  ),
                                ],
                              ),
                    ),
                  ),

                          InkWell(
                            onTap: (){
                              ElbitCubit.get(context)
                                  .changeBottomNav(1);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:Column(
                                children: [
                                  ElbitCubit.get(context).currentIndex==1?
                                  Image.asset('assets/images/corder.png'):SvgPicture.asset('assets/images/majesticons_list-box.svg'),
                                  SizedBox(height: 11.v),
                                  Text(
                                    "My Orders",
                                    style: CustomTextStyles.titleSmallGray900,
                                  ),
                                ],
                              ),

                            ),
                          ),
          InkWell(
            onTap: (){
              ElbitCubit.get(context)
                  .changeBottomNav(2);
            },
            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:Column(
                                children: [
                                  ElbitCubit.get(context).currentIndex==2
                                 ? Image.asset('assets/images/clike.png'):SvgPicture.asset('assets/images/flat-color-icons_like.svg'),
                                  SizedBox(height: 10.v),
                                  Text(
                                    "Wishlist",
                                    style: CustomTextStyles.titleSmallGray900,
                                  ),
                                ],
                              ),

                            ),
          ),
          InkWell(
            onTap: (){
              ElbitCubit.get(context)
                  .changeBottomNav(3);
            },
            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:Column(
                                children: [
                                  ElbitCubit.get(context).currentIndex==3?
                                      Image.asset('assets/images/cprofile.png'): Image.asset('assets/images/spr.png'),
                                  SizedBox(height: 10.v),
                                  Text(
                                    "Profile",
                                    style: CustomTextStyles.titleSmallGray900,
                                  ),
                                ],
                              ),
            ),
          ),

                  ],
                ),
              ),
            ),
      ),
    );

  }
}