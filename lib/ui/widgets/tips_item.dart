

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dashboard_ui/ui/utils/app_color.dart';
import 'package:flutter/material.dart';


class TipsItemState extends StatelessWidget {
  final String image ;
  final String title ;
  final String subtitle1 ;
  final String subtitle2 ;

  const TipsItemState({Key? key, required this.image, required this.title, required this.subtitle1, required this.subtitle2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        ValueListenableBuilder(
          valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
          builder: (BuildContext context, AdaptiveThemeMode value, Widget? child) {
            return  Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Theme.of(context).dividerColor,
                          width: 2
                      )
                  ),
                  child: Center(
                    child: Image.asset(
                       image,
                      height: 24,
                      color: value.isLight ? sharkBlack : alabasterWhite,
                    ),
                  ),
                )) ;
          },
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Container(
                  child: Text(subtitle1,style: TextStyle(color: sharkBlack,fontWeight: FontWeight.w700,fontSize: 12),),
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: melrosePurple,
                      borderRadius: BorderRadius.circular(8)
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Theme.of(context).dividerColor),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/avatar2.png',height: 10,),
                      SizedBox(width: 5,),
                      Text(subtitle2,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ],
    ) ;
  }
}
