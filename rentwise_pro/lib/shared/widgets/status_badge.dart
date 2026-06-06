import 'package:flutter/material.dart';
import 'package:rentwise_pro/core/theme/app_text_styles.dart';

enum StatusType { paid, pending, overdue }

class StatusBadge extends StatelessWidget {
  final String label;
  final StatusType type;

  const StatusBadge({super.key, required this.label, required this.type});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;

    switch (type) {
      case StatusType.paid:
        backgroundColor = const Color(0xFF10B981).withOpacity(0.1);
        textColor = const Color(0xFF065F46);
        break;
      case StatusType.pending:
        backgroundColor = const Color(0xFFF59E0B).withOpacity(0.1);
        textColor = const Color(0xFF92400E);
        break;
      case StatusType.overdue:
        backgroundColor = const Color(0xFFEF4444).withOpacity(0.1);
        textColor = const Color(0xFF991B1B);
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label.toUpperCase(),
        style: AppTextStyles.labelSmall.copyWith(
          color: textColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
