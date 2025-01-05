part of 'app_bloc.dart';

sealed class AppEvent extends Equatable {
  const AppEvent();
}

final class UpdateLocaleEvent extends AppEvent {
  const UpdateLocaleEvent({required this.languageCode});

  final String languageCode;

  @override
  List<Object?> get props => [languageCode];
}

final class ReadLocaleEvent extends AppEvent {
  const ReadLocaleEvent();

  @override
  List<Object?> get props => [];
}
