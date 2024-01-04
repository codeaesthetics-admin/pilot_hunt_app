import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'line_titles.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({Key? key}) : super(key: key);

  static final List<Color> gradientColors = [
    const Color(0xffF7B500),
    const Color(0xffF7B500),
  ];

  @override
  Widget build(BuildContext context) => LineChart(
    LineChartData(
      // minX: 0,
      // maxX: 12,
      // minY: 0,
      // maxY: 6,
      titlesData: LineTitles.getTitleData(),
      gridData: FlGridData(
        show: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        drawVerticalLine: false,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d), width: 1),
      ),
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 2.5),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(12, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          // dotData: FlDotData(show: false),
          belowBarData: BarAreaData(
            show: false,
            colors: gradientColors
                .map((color) => color.withOpacity(0.3))
                .toList(),
          ),
        ),
      ],
    ),
  );
}