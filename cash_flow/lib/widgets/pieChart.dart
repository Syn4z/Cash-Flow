import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pie_chart/pie_chart.dart';

class pieChart extends StatelessWidget {
  final double Food;
  final double Transportation;
  final double HomeRent;
  final double Entertainment;
  final double DailyLiving;
  final double FinancialObligation;
  final double Care;
  final double Gift;
  final double Personal;
  final double Salon;
  final double Other;
  const pieChart(
      {super.key,
      required this.Food,
      required this.Transportation,
      required this.HomeRent,
      required this.Entertainment,
      required this.DailyLiving,
      required this.FinancialObligation,
      required this.Care,
      required this.Gift,
      required this.Personal,
      required this.Salon,
      required this.Other});
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      'Food': Food,
      'Transportation': Transportation,
      'Home/Rent': HomeRent,
      'Entertainment': Entertainment,
      'Daily living': DailyLiving,
      'Financial obligation': FinancialObligation,
      'Care': Care,
      'Gift': Gift,
      'Personal': Personal,
      'Salon': Salon,
      'Other': Other
    };
    List<Color> colorList = [
      const Color(0xFFFF9F1C),
      const Color(0xFFe76f51),
      const Color(0xFFCBF3F0),
      const Color(0xFF2EC4B6),
      const Color(0xFF9D4EDD),
      const Color(0xFF5A189A),
      const Color(0xFF3D348B),
      const Color(0xFF7678ED),
      const Color(0xFFfdc3dc),
      const Color(0xFFF35B04),
      const Color(0xFFffdac6),
    ];
    return Center(
      child: PieChart(
        baseChartColor: const Color(0xffffff),
        dataMap: dataMap,
        colorList: colorList,
        animationDuration: Duration(seconds: 1),
        chartRadius: MediaQuery.of(context).size.width / 1.6,
        centerText: 'Expenses',
        chartType: ChartType.ring,
        chartValuesOptions: const ChartValuesOptions(
            showChartValuesOutside: true,
            showChartValueBackground: false,
            showChartValuesInPercentage: true),
        legendOptions: const LegendOptions(
            showLegends: true,
            legendTextStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 11,
            ),
            legendPosition: LegendPosition.bottom,
            showLegendsInRow: true),
      ),
    );
  }
}
