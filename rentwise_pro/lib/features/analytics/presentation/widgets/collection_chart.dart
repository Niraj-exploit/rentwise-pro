import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rentwise_pro/core/theme/app_colors.dart';
import 'package:rentwise_pro/core/theme/app_text_styles.dart';

class CollectionChart extends StatelessWidget {
  final Map<String, double> data;

  const CollectionChart({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final spots = data.entries.map((e) {
      final month = double.parse(e.key);
      return FlSpot(month, e.value / 1000); // Scale down for readability
    }).toList();

    return AspectRatio(
      aspectRatio: 1.7,
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: false),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'];
                  if (value.toInt() >= 1 && value.toInt() <= 6) {
                    return Text(
                      months[value.toInt() - 1],
                      style: AppTextStyles.labelSmall,
                    );
                  }
                  return const Text('');
                },
              ),
            ),
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              color: AppColors.primary,
              barWidth: 3,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                color: AppColors.primary.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
