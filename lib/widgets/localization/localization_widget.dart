import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plk_galacticos/app/app.dart';

class LocalizationWidget extends StatefulWidget {
  const LocalizationWidget({super.key});

  @override
  State<LocalizationWidget> createState() => _LocalizationWidgetState();
}

class _LocalizationWidgetState extends State<LocalizationWidget> {
  bool isEnglish = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isEnglish,
      activeThumbImage: NetworkImage(
        'https://flagcdn.com/w320/gb.png',
      ),
      inactiveThumbImage: NetworkImage(
        'https://flagcdn.com/w320/hr.png',
      ),
      onChanged: (bool value) {
        setState(() => isEnglish = value);

        BlocProvider.of<AppBloc>(context).add(
          UpdateLocaleEvent(languageCode: isEnglish ? 'en' : 'hr'),
        );
      },
    );
  }
}
