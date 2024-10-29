part of 'secret_code_cubit.dart';

sealed class SecretCodeState {}

final class SecretCodeInitial extends SecretCodeState {}

class SecretCodeloaded extends SecretCodeState {}

class SecretCodeseacsess extends SecretCodeState {
  String massage;
  SecretCodeseacsess({
    required this.massage,
  });
}

class SecretCodefaliouer extends SecretCodeState {
  String errormassage;
  SecretCodefaliouer({
    required this.errormassage,
  });
}
