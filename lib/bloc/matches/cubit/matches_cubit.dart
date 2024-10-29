// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:graduationproject/data/model/all_matches_model/all_matches.dart';

part 'matches_state.dart';

class MatchesCubit extends Cubit<MatchesState> {
  MatchesCubit(
    this.api,
  ) : super(MatchesInitial());

  final ApiServices api;
  Future Gitallmatches() async {
    try {
      emit(matchesloaded());

      final response = await api.get(
        "https://lostcal.onrender.com/api/mylost/allMatches",
      );
      emit(mathcesseacsess(listmatches: ALLMatches.fromJson(response)));
      return response;
    } on ServerException catch (e) {
      emit(matchesfaliouer(
          errormassage: "You are not login, Please login to get access"));
    }
  }
}
