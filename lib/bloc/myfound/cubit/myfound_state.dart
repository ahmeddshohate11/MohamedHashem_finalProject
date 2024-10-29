part of 'myfound_cubit.dart';

sealed class MyfoundState {}

final class MyfoundInitial extends MyfoundState {}

class Myfoundloaded extends MyfoundState {}

class Myfoundseacsess extends MyfoundState {
  final Myfoundes myfound;

  Myfoundseacsess({required this.myfound});
}

class Myfoundfaliouer extends MyfoundState {
  String errormassage;
  Myfoundfaliouer({
    required this.errormassage,
  });
}

class deleteloaded extends MyfoundState {}

class deletesaucsess extends MyfoundState {
  final Myfoundes myfound;

  deletesaucsess({required this.myfound});
}

class deletefalouer extends MyfoundState {
  String errormassage;
  deletefalouer({
    required this.errormassage,
  });
}
