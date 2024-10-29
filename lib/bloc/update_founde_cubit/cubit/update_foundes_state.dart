part of 'update_foundes_cubit.dart';

sealed class UpdateFoundesState {}

final class UpdateFoundesInitial extends UpdateFoundesState {}

class UpdateFoundesloaded extends UpdateFoundesState {}

class Updatefoundseacsess extends UpdateFoundesState {}

class Updatefoundfalouer extends UpdateFoundesState {
  String errormassage;
  Updatefoundfalouer({
    required this.errormassage,
  });
}

class uploadimagestate extends UpdateFoundesState {}
