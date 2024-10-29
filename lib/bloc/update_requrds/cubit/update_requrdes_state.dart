part of 'update_requrdes_cubit.dart';

sealed class UpdateRequrdesState {}

final class UpdateRequrdesInitial extends UpdateRequrdesState {}

class UpdateRequrdesloaded extends UpdateRequrdesState {}

class uploadimage1 extends UpdateRequrdesState {}

class uploadimage2 extends UpdateRequrdesState {}

class UpdateRequrdesUpdated extends UpdateRequrdesState {}

class UpdateRequrdesseacsess extends UpdateRequrdesState {}

class UpdateRequrdesfaliouer extends UpdateRequrdesState {
  String errormassage;
  UpdateRequrdesfaliouer({
    required this.errormassage,
  });
}
