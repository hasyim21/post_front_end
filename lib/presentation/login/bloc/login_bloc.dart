import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/respositories/auth_repository.dart';
import '../../../data/models/response/auth_response_model.dart';
import '../../../data/services/shared_prefs_service.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;
  LoginBloc(this._authRepository) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      try {
        final response = await _authRepository.login(
          event.email,
          event.password,
        );
        await SharedPrefsService.saveAuthData(response);
        emit(_Success(response));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}
