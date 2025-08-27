import 'package:flutter/material.dart';

class HorizontalSpacing extends StatelessWidget {
  final double size;

  const HorizontalSpacing.small({super.key}) : size = 8.0;
  const HorizontalSpacing.medium({super.key}) : size = 16.0;
  const HorizontalSpacing.large({super.key}) : size = 24.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size);
  }
}

class VerticalSpacing extends StatelessWidget {
  final double size;

  const VerticalSpacing.small({super.key}) : size = 8.0;
  const VerticalSpacing.medium({super.key}) : size = 16.0;
  const VerticalSpacing.large({super.key}) : size = 24.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}