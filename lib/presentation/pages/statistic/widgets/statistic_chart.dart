// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class StatisticChart extends StatelessWidget {
//   const StatisticChart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<ChartData> chartData = [
//       ChartData(2020, 10),
//       ChartData(2021, 13),
//       ChartData(2022, 30),
//       ChartData(2023, 45),
//       ChartData(2024, 22)
//     ];
//     return Scaffold(
//       body: Center(
//         child: SfCartesianChart(
//           series: <CartesianSeries>[
//             SplineSeries<ChartData, int>(
//               width: 2.w,
//               dataSource: chartData,
//               splineType: SplineType.cardinal,
//               cardinalSplineTension: 0.9,
//               xValueMapper: (ChartData data, _) => data.x,
//               yValueMapper: (ChartData data, _) => data.y,
//             ),
//             SplineSeries<ChartData, int>(
//               width: 2.w,
//               dataSource: chartData,
//               splineType: SplineType.monotonic,
//               cardinalSplineTension: 0.5,
//               xValueMapper: (ChartData data, _) => data.x,
//               yValueMapper: (ChartData data, _) => data.y,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ChartData {
//   ChartData(this.x, this.y);
//   final int x;
//   final double? y;
// }
