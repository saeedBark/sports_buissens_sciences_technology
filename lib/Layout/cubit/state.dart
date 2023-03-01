abstract class AppState {}

class AppInitaliztion extends AppState {}

class AppchangeBottomState extends AppState {}

class AppLoadingGetSportState extends AppState {}

class AppSuccsessGetSportState extends AppState {}

class AppErrorGetAppSportState extends AppState {
  final String error;

  AppErrorGetAppSportState(this.error);
}

class AppLoadingGetTechnologyState extends AppState {}

class AppSuccsessGetTechnologyState extends AppState {}

class AppErrorGetAppTechnologyState extends AppState {
  final String error;

  AppErrorGetAppTechnologyState(this.error);
}

class AppLoadingGetBusinessState extends AppState {}

class AppSuccsessGetBusinessState extends AppState {}

class AppErrorGetAppBusinessState extends AppState {
  final String error;
  AppErrorGetAppBusinessState(this.error);
}

class AppLoadingGetScienceState extends AppState {}

class AppSuccsessGetScienceState extends AppState {}

class AppErrorGetAppScienceState extends AppState {
  final String error;
  AppErrorGetAppScienceState(this.error);
}

class AppLoadingGetSearchState extends AppState{}

class AppSuccsessGetSearcheState extends AppState {}

class AppErrorGetAppSearcheState extends AppState {
  final String error;
  AppErrorGetAppSearcheState(this.error);
}

class AppChangeModeState extends AppState{}