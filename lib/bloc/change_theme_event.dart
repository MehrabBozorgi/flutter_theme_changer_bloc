part of 'change_theme_bloc.dart';

abstract class ChangeThemeEvent extends Equatable {
  const ChangeThemeEvent();
}

class ThemeChangerEvent extends ChangeThemeEvent {
  final AppTheme appTheme;

  const ThemeChangerEvent({this.appTheme = AppTheme.light});

  @override
  List<Object?> get props => [appTheme];
}
