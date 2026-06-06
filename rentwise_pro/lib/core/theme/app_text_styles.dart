import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  static TextStyle get headlineLarge => GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.25, // 40px / 32px
    letterSpacing: -0.64, // -0.02em
    color: AppColors.onSurface,
  );

  static TextStyle get headlineMedium => GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.33, // 32px / 24px
    letterSpacing: -0.24, // -0.01em
    color: AppColors.onSurface,
  );

  static TextStyle get headlineSmall => GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.4, // 28px / 20px
    color: AppColors.onSurface,
  );

  static TextStyle get titleMedium => GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0.15,
    color: AppColors.onSurface,
  );

  static TextStyle get bodyLarge => GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 1.55, // 28px / 18px
    color: AppColors.onSurface,
  );

  static TextStyle get bodyMedium => GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5, // 24px / 16px
    color: AppColors.onSurface,
  );

  static TextStyle get bodySmall => GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.42, // 20px / 14px
    color: AppColors.onSurfaceVariant,
  );

  static TextStyle get labelMedium => GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.42, // 20px / 14px
    letterSpacing: 0.7, // 0.05em
    color: AppColors.onSurface,
  );

  static TextStyle get labelSmall => GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.33, // 16px / 12px
    color: AppColors.onSurfaceVariant,
  );

  // Financial Figures (Tabular numbers)
  static TextStyle get currencyLarge => GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFeatures: const [FontFeature.tabularFigures()],
    color: AppColors.onSurface,
  );
}
