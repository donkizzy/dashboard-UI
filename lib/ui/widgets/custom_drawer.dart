

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dashboard_ui/ui/utils/app_color.dart';
import 'package:dashboard_ui/ui/utils/utils.dart';
import 'package:dashboard_ui/ui/widgets/drawer_item.dart';
import 'package:dashboard_ui/ui/widgets/logo_item.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(icon: Icon(Icons.clear), onPressed: () {
                          Navigator.pop(context);
                        },color: paleSkyGrey,),
                        LogoItem(),
                      ],
                    ),
                    SizedBox(height: 20,),
                    DrawerItem(
                      title: 'Home',
                      showAddCircle: false,
                      showExpand: false,
                      icon: 'assets/home.png',
                    ),
                    SizedBox(height: 30,),
                    DrawerItem(
                      title: 'Products',
                      showAddCircle: true,
                      showExpand: true,
                      icon: 'assets/products.png',
                    ),
                    SizedBox(height: 30,),
                    DrawerItem(
                      title: 'Customers',
                      showAddCircle: false,
                      showExpand: true,
                      icon: 'assets/customers.png',
                    ),
                    SizedBox(height: 30,),
                    DrawerItem(
                      title: 'Shop',
                      showAddCircle: false,
                      showExpand: false,
                      icon: 'assets/shop.png',
                    ),
                    SizedBox(height: 30,),
                    DrawerItem(
                      title: 'Income',
                      showAddCircle: false,
                      showExpand: true,
                      icon: 'assets/income.png',
                    ),
                    SizedBox(height: 30,),
                    DrawerItem(
                      title: 'Promote',
                      showAddCircle: false,
                      showExpand: false,
                      icon: 'assets/promote.png',
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: width(context),
                    height: 70,
                    decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/product.png'),
                        radius: 20,
                      ),
                      title: Text(
                        'Tran Mau Tri Tam',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text('UI Kit',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                      trailing: Icon(Icons.expand_more,color: paleSkyGrey,size: 20,),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(height: 1,decoration: BoxDecoration(color: Theme.of(context).dividerColor),),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.help,color: paleSkyGrey,size: 20,),
                          SizedBox(width: 15,),
                          Text('Help & getting started',style: TextStyle(color: paleSkyGrey,fontSize: 15,fontWeight: FontWeight.w600),)
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text('8',style: TextStyle(color: sharkBlack,fontWeight: FontWeight.w700,fontSize: 12),),
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: melrosePurple,
                                borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                                    ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  ValueListenableBuilder(
                    valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
                    builder: (BuildContext context, AdaptiveThemeMode value, Widget? child) {
                      return Container(
                        height: 45,
                        width: width(context),
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Theme.of(context).dividerColor,
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap:(){
                                AdaptiveTheme.of(context).setLight();
                              },
                              child: Container(
                                height: 35,
                                width: width(context) / 3.2 ,
                                 padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: value.isLight ? Theme.of(context).cardColor : Theme.of(context).dividerColor,
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.light_mode,size: 15,color: value.isLight ? sharkBlack : paleSkyGrey,),
                                    SizedBox(width: 5.0,),
                                    Text('Light',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: value.isLight ? sharkBlack : paleSkyGrey),),
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                AdaptiveTheme.of(context).setDark();
                              },
                              child: Container(
                                height: 32,
                                width: width(context) / 3.2,
                                // padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: !value.isLight ? Theme.of(context).cardColor : Theme.of(context).dividerColor,
                                    borderRadius: BorderRadius.circular(32)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.nightlight_outlined,size: 15,color: value.isLight ? paleSkyGrey : alabasterWhite, ),
                                    SizedBox(width: 5.0,),
                                    Text('Dark',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: value.isLight ? paleSkyGrey : alabasterWhite),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ) ;
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
