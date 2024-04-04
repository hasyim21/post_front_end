import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/respositories/auth_repository.dart';
import '../../../../data/services/shared_prefs_service.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final AuthRepository _authRepository;
  LogoutBloc(this._authRepository) : super(const _Initial()) {
    on<_Logout>((event, emit) async {
      emit(const _Loading());
      try {
        await _authRepository.logout();
        await SharedPrefsService.removeAuthData();
        emit(const _Success());
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}
