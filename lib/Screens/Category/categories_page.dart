
import 'package:elbit_ui/Screens/Category/widgets/ListviewCategory.dart';
import 'package:elbit_ui/Screens/Category/widgets/rol_list.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Categories extends StatefulWidget {
  const Categories({Key? key})
      : super(
          key: key,
        );

  @override
  CategoriesState createState() => CategoriesState();
}

class CategoriesState extends State<Categories>
    with AutomaticKeepAliveClientMixin<Categories> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.start,
      children: [
       // SizedBox(height: 16.v),
        SizedBox(
            width: 70,
            child: rol_list()),
        VerticalDivider(color: Color(0XFFDAE6F2), thickness: 1,width: 5),
        Expanded(

          child: Padding(
            padding: const EdgeInsets.only(top: 11.0),
            child: GridView.builder(

            padding: EdgeInsets.only(bottom: 180),
              itemCount: 12,
              physics: BouncingScrollPhysics(),

              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8,
              crossAxisSpacing: 1.4,
                mainAxisSpacing: 0.1
              ),
              itemBuilder: (context, index) {
                return  Listviewcategory() ;
              },
            ),
          ),
        )

      ],
    );
  }

  /// Section Widget

}
