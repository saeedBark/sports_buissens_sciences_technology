import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soprts_buissens_sciences_technology/Layout/cubit/state.dart';
import 'package:soprts_buissens_sciences_technology/network/dio_api/dio.dart';
import 'package:soprts_buissens_sciences_technology/network/shared_preference/sharedPreference.dart';
import 'package:soprts_buissens_sciences_technology/screens/business.dart';
import 'package:soprts_buissens_sciences_technology/screens/sport.dart';
import 'package:soprts_buissens_sciences_technology/screens/technologic.dart';
import 'package:soprts_buissens_sciences_technology/screens/science.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitaliztion());

  static AppCubit get(context) => BlocProvider.of(context);

  var currentIndex = 0;

  List<BottomNavigationBarItem> bottom = [
    BottomNavigationBarItem(icon: Icon(Icons.sports_soccer), label: 'الرياضة'),
    BottomNavigationBarItem(
        icon: Icon(Icons.perm_device_information_outlined),
        label: 'التكنولوجيا'),
    BottomNavigationBarItem(
        icon: Icon(Icons.business_center_outlined), label: 'الأعمال'),
    BottomNavigationBarItem(
        icon: Icon(Icons.science_outlined), label: 'العلوم'),
  ];

  List<Widget> screens = [
    SporScreen(),
    TechnologiScreen(),
    BusinessScreen(),
    ScienceScreen(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(AppchangeBottomState());
  }

  List<dynamic> sportEg = [];
  void getSport() {
    emit(AppLoadingGetSportState());
    print('saeed');
    DioHelper.getDataSport(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'sports',
      'apikey': 'd6b0614fd5e44ac7889b0105fd6a801e',
    }).then((value) {
      print(value.data['articles']);
      sportEg = value.data['articles'];
      print(sportEg[0]['title']);
      emit(AppSuccsessGetSportState());
    }).catchError((error) {
      print(error.toString());
      emit(AppErrorGetAppSportState(error.toString()));
    });
  }

  List<dynamic> technology = [];
  void getTecnologie() {
    emit(AppLoadingGetTechnologyState());
    DioHelper.getDataSport(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'technology',
      'apikey': 'd6b0614fd5e44ac7889b0105fd6a801e',
    }).then((value) {
      // print(value.data['articles']);
      technology = value.data['articles'];
      // print( sportEg);
      emit(AppSuccsessGetTechnologyState());
    }).catchError((error) {
      print(error.toString());
      emit(AppErrorGetAppTechnologyState(error.toString()));
    });
  }

  List<dynamic> busniss = [];
  void getBusniss() {
    emit(AppLoadingGetBusinessState());
    DioHelper.getDataSport(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'business',
      'apikey': 'd6b0614fd5e44ac7889b0105fd6a801e',
    }).then((value) {
      // print(value.data['articles']);
      busniss = value.data['articles'];
      // print( sportEg);
      emit(AppSuccsessGetBusinessState());
    }).catchError((error) {
      print(error.toString());
      emit(AppErrorGetAppBusinessState(error.toString()));
    });
  }

  List<dynamic> science = [];
  void getScience() {
    emit(AppLoadingGetScienceState());
    DioHelper.getDataSport(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'science',
      'apikey': 'd6b0614fd5e44ac7889b0105fd6a801e',
    }).then((value) {
      // print(value.data['articles']);
      science = value.data['articles'];
      // print( sportEg);
      emit(AppSuccsessGetScienceState());
    }).catchError((error) {
      print(error.toString());
      emit(AppErrorGetAppScienceState(error.toString()));
    });
  }

  List<dynamic> search = [];
  void getSearch(String? value) {
    emit(AppLoadingGetSearchState());
    DioHelper.getDataSport(url: 'v2/everything', query: {
      'q': '$value',
      'apikey': 'd6b0614fd5e44ac7889b0105fd6a801e',
    }).then((value) {
      // print(value.data['articles']);
      search = value.data['articles'];
      // print( sportEg);
      emit(AppSuccsessGetSearcheState());
    }).catchError((error) {
      print(error.toString());
      emit(AppErrorGetAppSearcheState(error.toString()));
    });
  }

  bool isDark = false;
  void changeMode({bool? isforme}) {
    if (isforme != null) {
      isDark = isforme;
      emit(AppChangeModeState());
    } else
      isDark = !isDark;
    SharedPreferenceCach.putBoolean(key: 'isDark', value: isDark).then((value) {
      emit(AppChangeModeState());
    });
  }
}
