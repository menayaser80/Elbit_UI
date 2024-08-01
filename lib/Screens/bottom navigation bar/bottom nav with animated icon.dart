
import 'package:elbit_ui/Bloc/cubit.dart';
import 'package:elbit_ui/Bloc/states.dart';
import 'package:elbit_ui/Screens/bottom%20navigation%20bar/custom%20bottom%20nav%20bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Bottom_Nav_bar extends StatelessWidget {
  const Bottom_Nav_bar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int index;
    return  BlocConsumer<ElbitCubit,ElbitStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit=ElbitCubit.get(context);
        index=cubit.currentIndex;
        return Material(
          child: Scaffold(
            extendBody: true,
            bottomNavigationBar:CustomBottomNavigationBar(),

            floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
            floatingActionButton: Badge(
              backgroundColor: Color(0XFF224971),
              largeSize: 20,
              smallSize: 20,
              alignment: Alignment.topRight,
              label: Text('4',style: TextStyle(
                  color: Colors.white
              ),),
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                backgroundColor: Color(0XFFDAE6F2),

                onPressed: (){},

                child:
                Image.asset('assets/images/img_cart_icon.png',
                width: 30,
                  height: 30,
                ),
              elevation: 0.0,
              ),
            ),
            body:cubit.bottomScreen[cubit.currentIndex] ,
          ),
        );
      },

    );
  }
}
