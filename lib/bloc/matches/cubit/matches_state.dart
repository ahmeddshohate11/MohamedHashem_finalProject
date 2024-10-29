part of 'matches_cubit.dart';

sealed class MatchesState extends Equatable {
  const MatchesState();

  @override
  List<Object> get props => [];
}

final class MatchesInitial extends MatchesState {}

class matchesloaded extends MatchesState {}

class mathcesseacsess extends MatchesState {
  final ALLMatches listmatches;

  mathcesseacsess({required this.listmatches});
}

class matchesfaliouer extends MatchesState {
  String errormassage;
  matchesfaliouer({
    required this.errormassage,
  });
}
