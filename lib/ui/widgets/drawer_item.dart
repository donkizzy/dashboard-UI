

import 'package:dashboard_ui/ui/utils/app_color.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String icon ;
  final String title ;
  final bool showAddCircle ;
  final bool showExpand ;

  const DrawerItem({Key? key, required this.icon, required this.title, required this.showAddCircle, required this.showExpand}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(icon,color: paleSkyGrey,height: 20,),
              SizedBox(width: 15,),
              Text(title,style: TextStyle(color: paleSkyGrey,fontSize: 15,fontWeight: FontWeight.w600),)
            ],
          ),
          Row(
            children: [
             if(showAddCircle) Icon(Icons.add_circle_outline,color: paleSkyGrey,size: 20,),
              SizedBox(width: 15,),
              if(showExpand) Icon(Icons.expand_more,color: paleSkyGrey,size: 20,),            ],
          ),
        ],
      ),
    );
  }
}
