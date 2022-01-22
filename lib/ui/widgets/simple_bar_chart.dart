

/// Bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:dashboard_ui/ui/utils/app_color.dart';
import 'package:dashboard_ui/ui/utils/utils.dart';
import 'package:flutter/material.dart';

class SimpleBarChart extends StatelessWidget {

  final List<ProductViews> data = [
    ProductViews(
      day: 22,
      views: 30,
      barColor: charts.ColorUtil.fromDartColor(melrosePurple),
    ),
    ProductViews(
      day: 23,
      views: 25,
      barColor: charts.ColorUtil.fromDartColor(peachOrange),
    ),
    ProductViews(
      day: 24,
      views: 20,
      barColor: charts.ColorUtil.fromDartColor(mantisGreen),
    ),
    ProductViews(
      day: 25,
      views: 15,
      barColor: charts.ColorUtil.fromDartColor(dodgerBlue),
    ),
    ProductViews(
      day: 26,
      views: 10,
      barColor: charts.ColorUtil.fromDartColor(persimmonOrange),
    ),
    ProductViews(
      day: 27,
      views: 5,
      barColor: charts.ColorUtil.fromDartColor(dodgerBlue),
    ),
    ProductViews(
      day: 28,
      views: 18,
      barColor: charts.ColorUtil.fromDartColor(melrosePurple),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ProductViews, String>> series = [
      charts.Series(
          id: "productsviews",
          data: data,
          domainFn: (ProductViews series, _) => series.day.toString(),
          measureFn: (ProductViews series, _) => series.views,
          colorFn: (ProductViews series, _) => series.barColor,
      )
    ];

    return Container(
      width: width(context),
      height: 300,
       child: Column(
         children: <Widget>[
           Expanded(
             child: charts.BarChart(series, animate: true),
           )
         ],
       ),
    );
  }


}

/// Sample ordinal data type.
class ProductViews {
  final int day;
  final int views;
  final charts.Color barColor;

  ProductViews(
      {
        required this.day,
        required this.views,
        required this.barColor
      }
      );
}