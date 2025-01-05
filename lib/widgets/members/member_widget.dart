import 'package:flutter/material.dart';
import 'package:plk_galacticos/config/config.dart';

class MemberWidget extends StatelessWidget {
  const MemberWidget({
    super.key,
    required this.fullName,
    required this.imagePath,
  });

  final String fullName;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: LayoutConfig.circularBorderRadiusMedium,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: LayoutConfig.circularRadiusMedium,
            ),
            child: Image.asset(
              imagePath,
              // fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
