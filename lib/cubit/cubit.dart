import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(PointsChangedState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void incrementPoints({required String team, required int incrementNum}) {
    if (team == 'A') {
      teamAPoints += incrementNum;
      emit(PointsChangedState());
    }
    if (team == 'B') {
      teamBPoints += incrementNum;
      emit(PointsChangedState());
    }
  }

  void resetPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(PointsChangedState());
  }
}
