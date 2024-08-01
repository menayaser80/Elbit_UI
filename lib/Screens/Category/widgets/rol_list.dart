import 'package:elbit_ui/theme/homehelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class rol_list extends StatefulWidget {
  const rol_list({super.key, this.data});
final data ;
  @override
  State<rol_list> createState() => _rol_listState();
}

class _rol_listState extends State<rol_list> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
       physics: const BouncingScrollPhysics(),
        itemCount: 8 ,
        itemBuilder: (context,i){
return InkWell(
  onTap: (){},
  child: Ink(

  child: Row(
crossAxisAlignment: CrossAxisAlignment.start
    ,
    children: [

      Column(
        children: [
          Image.asset('assets/images/cat.png',width: 70,),
          Text("Home\n Pantry",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.labelLarge,),
        ],
      ),

      Divider(
        thickness: 2,
        color: Color(0XFFDAE6F2),
      ),
    ],
  ),
  ),);
        });
  }
}
