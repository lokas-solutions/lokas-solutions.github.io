import 'package:flutter/material.dart';
import 'package:plk_galacticos/widgets/widgets.dart';

class ShellScreen extends StatelessWidget {
  const ShellScreen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(),
          Expanded(child: child),
          FooterWidget(),
        ],
      ),
    );
  }
}
