import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'change_theme_event.dart';
part 'change_theme_state.dart';

class ChangeThemeBloc extends Bloc<ChangeThemeEvent, ChangeThemeState> {
  ChangeThemeBloc() : super(const ChangeThemeState()) {
    on<ChangeThemeEvent>((event, emit) {
      if (state.appTheme == AppTheme.light) {
        emit(state.copyWith(appTheme: AppTheme.dark));
      }
      //
      else if (state.appTheme == AppTheme.dark) {
        emit(state.copyWith(appTheme: AppTheme.light));
      }

    });
  }
}
