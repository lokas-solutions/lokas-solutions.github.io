part of 'app_bloc.dart';

class AppState extends Equatable {
  const AppState({
    this.loading = true,
    this.languageCode = 'en',
  });

  final bool loading;
  final String languageCode;

  Locale get locale => Locale(languageCode);

  AppState copyWith({
    bool? loading,
    String? languageCode,
  }) {
    return AppState(
      loading: loading ?? this.loading,
      languageCode: languageCode ?? this.languageCode,
    );
  }

  @override
  List<Object?> get props => [
        loading,
        languageCode,
        locale,
      ];
}
