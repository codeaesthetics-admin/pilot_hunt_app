import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
    show: true,
    bottomTitles: SideTitles(
      showTitles: true,
      reservedSize: 35,
      getTextStyles: (context, value) => const TextStyle(
        color: Color(0xff68737d),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      getTitles: (value) {
        switch (value.toInt()) {
          case 1:
            return 'Mon';
          case 2:
            return 'Tue';
          case 3:
            return 'Wed';
          case 4:
            return 'Thur';
          case 5:
            return 'Friday';
          case 6:
            return 'Sat';
        }
        return '';
      },
      margin: 8,
    ),
    leftTitles: SideTitles(
      showTitles: true,
      getTextStyles: (context, value) => const TextStyle(
        color: Color(0xff67727d),
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      getTitles: (value) {
        switch (value.toInt()) {
          // case 1:
          //   return '\$100';
          case 2:
            return '\$200';
          case 3:
            return '\$300';
          case 4:
            return  '\$400';
          case 5:
            return'\$500';
        }
        return '';
      },
      reservedSize: 35,
      margin: 12,
    ),
    topTitles: SideTitles(
      showTitles: false,
      getTextStyles: (context, value) => const TextStyle(
        color: Color(0xff67727d),
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      // getTitles: (value) {
      //   switch (value.toInt()) {
      //   // case 1:
      //   //   return '\$100';
      //     case 2:
      //       return '\$200';
      //     case 3:
      //       return '\$300';
      //     case 4:
      //       return  '\$400';
      //     case 5:
      //       return'\$500';
      //   }
      //   return '';
      // },
      reservedSize: 35,
      margin: 12,
    ),
    rightTitles: SideTitles(
      showTitles: false,
      getTextStyles: (context, value) => const TextStyle(
        color: Color(0xff67727d),
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      // getTitles: (value) {
      //   switch (value.toInt()) {
      //   // case 1:
      //   //   return '\$100';
      //     case 2:
      //       return '\$200';
      //     case 3:
      //       return '\$300';
      //     case 4:
      //       return  '\$400';
      //     case 5:
      //       return'\$500';
      //   }
      //   return '';
      // },
      reservedSize: 35,
      margin: 12,
    ),
  );
}
