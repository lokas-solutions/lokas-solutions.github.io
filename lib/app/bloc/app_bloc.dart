import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState()) {
    on<ReadLocaleEvent>(_onReadLocale);
    on<UpdateLocaleEvent>(_onUpdateLocale);

    add(ReadLocaleEvent());
  }

  Future<void> _onUpdateLocale(
    UpdateLocaleEvent event,
    Emitter<AppState> emit,
  ) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('languageCode', event.languageCode);
    emit(state.copyWith(languageCode: event.languageCode));
  }

  Future<void> _onReadLocale(
    ReadLocaleEvent event,
    Emitter<AppState> emit,
  ) async {
    final preferences = await SharedPreferences.getInstance();
    final languageCode = preferences.getString('languageCode') ?? 'en';
    emit(state.copyWith(loading: false, languageCode: languageCode));
  }
}
