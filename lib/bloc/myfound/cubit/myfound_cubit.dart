import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:graduationproject/data/model/myfound_model/myfound_model.dart';
import 'package:graduationproject/data/model/myfound_model/myfound_response.dart';
import 'package:graduationproject/data/sherdp_referense/cash_helper.dart';

part 'myfound_state.dart';

class MyfoundCubit extends Cubit<MyfoundState> {
  MyfoundCubit(this.api) : super(MyfoundInitial());
  final ApiServices api;
  myLostDate? myfondedlist;
  Myfoundes? myfoundes;
  // ignore: non_constant_identifier_names
  Future GetMyfound() async {
    try {
      emit(Myfoundloaded());

      final response = await api.get(
        'https://lostcal.onrender.com/api/lost',
      );

      emit(Myfoundseacsess(myfound: Myfoundes.fromJson(response)));

      return response;
    } on ServerException catch (e) {
      emit(Myfoundfaliouer(errormassage: e.errorsearch.message!));
    }
  }

  Future deletemyfound() async {
    try {
      emit(deleteloaded());

      final response = await api.delete(
        'https://lostcal.onrender.com/api/lost/6682af9bdd7e63535755111d}',
      );

      emit(deletesaucsess(myfound: Myfoundes.fromJson(response)));

      return response;
    } on ServerException catch (e) {
      emit(deletefalouer(errormassage: "errorrr"));
    }
  }
}
