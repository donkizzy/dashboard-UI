

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dashboard_ui/ui/utils/app_color.dart';
import 'package:flutter/material.dart';


class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('assets/product.png',height: 64,),
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Crypter - NFT',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10,),
            Text('UI Kit',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600))
          ],
        ),
        SizedBox(width: 20,),
        Expanded(child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\$25300',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10,),
            ValueListenableBuilder(
              valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
              builder: (BuildContext context,AdaptiveThemeMode value, Widget? child) {
                return Container(
                  width: 60,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: value.isLight ? fetaGreen : fetaGreen.withOpacity(0.15),
                  ),
                  child: Center(child: Text('Active',style: TextStyle(color: mantisGreen,fontSize: 12,fontWeight: FontWeight.w700),)),
                ) ;
              },
            )
          ],
        ))
      ],
    );
  }
}

