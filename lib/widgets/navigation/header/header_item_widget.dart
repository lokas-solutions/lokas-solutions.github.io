import 'package:flutter/material.dart';
import 'package:plk_galacticos/config/config.dart';

class HeaderItemWidget extends StatelessWidget {
  const HeaderItemWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: LayoutConfig.insetsMedium,
      child: TextButton(
        onPressed: onTap,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
