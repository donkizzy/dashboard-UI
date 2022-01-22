import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dashboard_ui/ui/utils/app_color.dart';
import 'package:dashboard_ui/ui/utils/utils.dart';
import 'package:dashboard_ui/ui/widgets/simple_bar_chart.dart';
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
      backgroundColor: Theme.of(context).canvasColor,
      drawer: Drawer(
        child: Column(),
      ),
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
          Text(
            'Dashboard',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
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
                    color: Theme.of(context).canvasColor,
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
                              color: viewType ? Theme.of(context).cardColor : Theme.of(context).canvasColor,
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
                              color: !viewType ? Theme.of(context).cardColor : Theme.of(context).canvasColor,
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
                        Text('Gladyce')
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/avatar2.png'),
                          radius: 30,
                        ),
                        SizedBox(height: 20,),
                        Text('Elbert')
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Theme.of(context).canvasColor ,
                          child: Icon(Icons.arrow_forward,color: greyChateau,),
                          radius: 30,
                        ),
                        SizedBox(height: 20,),
                        Text('View All')
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
              height: height(context) / 1.5,
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

          )
        ],
      ),
    );
  }
}
