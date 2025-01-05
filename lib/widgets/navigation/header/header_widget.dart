import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:plk_galacticos/config/config.dart';
import 'package:plk_galacticos/widgets/widgets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: ColorConfig.secondaryPurple,
          borderRadius: LayoutConfig.circularBorderRadiusMax,
        ),
        margin: LayoutConfig.insetsLarge,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 64, maxWidth: 1000),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: LayoutConfig.spacingMedium,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/logos/logo3.png'),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    HeaderItemWidget(
                      title: AppLocalizations.of(context)!.navigationHome,
                      onTap: () => context.go('/'),
                    ),
                    HeaderItemWidget(
                      title: AppLocalizations.of(context)!.navigationMembers,
                      onTap: () => context.go('/members'),
                    ),
                    LocalizationWidget(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
