part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

class Loginloaded extends LoginState {}

class Loginsucsess extends LoginState {}

class Loginfaliouer extends LoginState {
  String errormassage;
  Loginfaliouer({
    required this.errormassage,
  });
}

class Profileloaded extends LoginState {}

class Profileseacsess extends LoginState {
  final Profile profilemodel;

  Profileseacsess({required this.profilemodel});
}

class Profilefaliouer extends LoginState {
  String errormassage;
  Profilefaliouer({
    required this.errormassage,
  });
}
