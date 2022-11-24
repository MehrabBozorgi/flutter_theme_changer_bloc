part of 'change_theme_bloc.dart';

enum AppTheme {
  light,
  dark,
}

class ChangeThemeState extends Equatable {
  final AppTheme appTheme;

  const ChangeThemeState({
    this.appTheme = AppTheme.light,
  });

  ChangeThemeState copyWith({
    AppTheme? appTheme,
  }) {
    return ChangeThemeState(
      appTheme: appTheme ?? this.appTheme,
    );
  }

  @override
  List<Object?> get props => [appTheme];
}
