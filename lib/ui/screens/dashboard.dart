import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dashboard_ui/ui/utils/app_color.dart';
import 'package:dashboard_ui/ui/utils/utils.dart';
import 'package:dashboard_ui/ui/widgets/custom_drawer.dart';
import 'package:dashboard_ui/ui/widgets/product_item.dart';
import 'package:dashboard_ui/ui/widgets/simple_bar_chart.dart';
import 'package:dashboard_ui/ui/widgets/tips_item.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool viewType = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).dividerColor,
      drawer: CustomDrawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).cardColor,
        iconTheme: IconThemeData(color: greyChateau),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.search),
            Icon(Icons.chat),
            Icon(Icons.notifications),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          InkWell(
            onTap: (){
              AdaptiveTheme.of(context).toggleThemeMode();
            },
            child: Text(
              'Dashboard',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: height(context) / 1.8,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 16,
                          height: 32,
                          decoration: BoxDecoration(
                            color: peachOrange,
                            borderRadius: BorderRadius.circular(4.0)
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'Overview',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: greyChateau),
                          ),
                      child: Row(
                        children: [
                          Text('All Time',style: TextStyle(color:greyChateau,fontSize: 14,fontWeight: FontWeight.w600 ),),
                          SizedBox(width: 5.0,),
                          Icon(Icons.keyboard_arrow_down,color: greyChateau,)
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: width(context),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: InkWell(
                          onTap:(){
                            setState(() {
                              viewType = true ;
                            });
                          },
                          child: Container(
                            height: 136,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: viewType ? Theme.of(context).cardColor : Theme.of(context).dividerColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Customers',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: greyChateau),),
                                Text('254k',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,),),
                                SizedBox(
                                  height: 7,
                                ),
                                  ValueListenableBuilder(
                                  valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
                                  builder: (BuildContext context,AdaptiveThemeMode value, Widget? child) {
                                    return Container(
                                      width: 60,
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6.0),
                                        color: value.isLight ? pippinOrange : pippinOrange.withOpacity(0.15),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.arrow_upward,color: persimmonOrange,size: 12,),
                                          Text('37.8%',style: TextStyle(color: persimmonOrange,fontSize: 12,fontWeight: FontWeight.w700),)
                                        ],
                                      ),
                                    ) ;
                                  }
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              viewType = false ;
                            });
                          },
                          child: Container(
                            height: 136,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: !viewType ? Theme.of(context).cardColor : Theme.of(context).dividerColor,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              children: [
                                Text('Income',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: greyChateau),),
                                Text('254k',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,),),
                                SizedBox(
                                  height: 7,
                                ),
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
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.arrow_upward,color: mantisGreen,size: 12,),
                                          Text('37.8%',style: TextStyle(color: mantisGreen,fontSize: 12,fontWeight: FontWeight.w700),)
                                        ],
                                      ),
                                    ) ;
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: 'Welcome',
                            style: TextStyle(
                                color: greyChateau,
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                            ),
                            children: [
                              TextSpan(
                                  text: ' 857 Customers',
                                  style: TextStyle(
                                      color: Theme.of(context).textTheme.headline1!.color,
                                      fontWeight: FontWeight.w700
                                  )),
                              TextSpan(
                                  text: ' personal message 😎',),
                            ]
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: greyChateau),
                      ),
                      child: Text('Send',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600 ),),
                    ),

                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/avatar2.png'),
                          radius: 30,
                        ),
                        SizedBox(height: 20,),
                        Text('Gladyce',style: TextStyle(fontWeight: FontWeight.w500))
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/avatar2.png'),
                          radius: 30,
                        ),
                        SizedBox(height: 20,),
                        Text('Elbert',style: TextStyle(fontWeight: FontWeight.w500))
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Theme.of(context).dividerColor ,
                          child: Icon(Icons.arrow_forward,color: greyChateau,),
                          radius: 30,
                        ),
                        SizedBox(height: 20,),
                        Text('View All',style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: height(context) / 1.8,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 16,
                          height: 32,
                          decoration: BoxDecoration(
                              color: melrosePurple,
                              borderRadius: BorderRadius.circular(4.0)
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'Product views',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: greyChateau),
                      ),
                      child: Row(
                        children: [
                          Text('Last 7 days',style: TextStyle(color:greyChateau,fontSize: 14,fontWeight: FontWeight.w600 ),),
                          SizedBox(width: 5.0,),
                          Icon(Icons.keyboard_arrow_down,color: greyChateau,)
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SimpleBarChart()
              ],
            ),

          ),
          SizedBox(height: 20,),
          Container(
        height: height(context) / 1.3,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 16,
                  height: 32,
                  decoration: BoxDecoration(
                      color: fringyFlower,
                      borderRadius: BorderRadius.circular(4.0)
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  'Pro Tips',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 10,),
              ],
            ),
            SizedBox(height: 20,),
            Text('Need some ideas for the next product?',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: greyChateau),),
            SizedBox(height: 20,),
            TipsItemState(title: 'Early Access', subtitle1: 'New',subtitle2: '3 mins read',image: 'assets/event.png',),
            SizedBox(height: 20,),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).dividerColor ,
                  child: Icon(Icons.arrow_forward,color: greyChateau,),
                  radius: 30,
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Early Access',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text('New',style: TextStyle(color: sharkBlack,fontWeight: FontWeight.w700,fontSize: 12),),
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
                              Text('3 mins read',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            TipsItemState(title: 'Early Access', subtitle1: 'New',subtitle2: '3 mins read',image: 'assets/event.png',),
            SizedBox(height: 20,),
            TipsItemState(title: 'Early Access', subtitle1: 'New',subtitle2: '3 mins read',image: 'assets/event.png',),
            SizedBox(height: 20,),
            TipsItemState(title: 'Early Access', subtitle1: 'New',subtitle2: '3 mins read',image: 'assets/event.png',),
            SizedBox(height: 20,),
            TipsItemState(title: 'Early Access', subtitle1: 'New',subtitle2: '3 mins read',image: 'assets/event.png',),
          ],
        ),
      ),
          SizedBox(height: 20,),
          Container(
            height: height(context) / 3,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 16,
                      height: 32,
                      decoration: BoxDecoration(
                          color: frenchPass,
                          borderRadius: BorderRadius.circular(4.0)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Get more customers!',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text('50% of new customers explore products because the author sharing the work on the social media network. Gain your earnings right now! 🔥',style: TextStyle(
                  color: greyChateau,
                  fontSize: 15
                ),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Theme.of(context).dividerColor),
                        ),
                        child: Image.asset('assets/facebook.png'),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Theme.of(context).dividerColor),
                        ),
                        child: Image.asset('assets/twitter.png'),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Theme.of(context).dividerColor),
                        ),
                        child: Image.asset('assets/instagram.png'),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: height(context) / 1.5,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 16,
                      height: 32,
                      decoration: BoxDecoration(
                          color: frenchPass,
                          borderRadius: BorderRadius.circular(4.0)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      'Popular products',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Products',style: TextStyle(
                        color: greyChateau,
                        fontSize: 13
                    )),
                    Text('Earnings',style: TextStyle(
                        color: greyChateau,
                        fontSize: 13
                    )),
                  ],
                ),
                SizedBox(height: 20,),
                Container(height: 1,decoration: BoxDecoration(color: Theme.of(context).dividerColor),),
                SizedBox(height: 20,),
                ProductItem(),
                SizedBox(height: 20,),
                ProductItem(),
                SizedBox(height: 20,),
                ProductItem(),
                SizedBox(height: 20,),
                ProductItem(),
                SizedBox(height: 25,),
                Container(
                  height: 50,
                  width: width(context),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Theme.of(context).dividerColor),
                  ),
                  child: Center(
                    child: Text(
                      'All Products',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
