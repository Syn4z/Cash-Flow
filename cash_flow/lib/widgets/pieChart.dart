import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pie_chart/pie_chart.dart';

class pieChart extends StatelessWidget {
  const pieChart({super.key});
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      'Food': 3004.7,
      'Transportation': 120,
      'Home/Rent': 1000,
      'Entertainment': 2500,
      'Daily living': 100,
      'Financial obligation': 200,
      'Care': 300,
      'Gift': 500,
      'Personal': 10,
      'Salon': 500,
      'Other': 100
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
