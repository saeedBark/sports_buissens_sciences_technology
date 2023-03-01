import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soprts_buissens_sciences_technology/Layout/cubit/cubit.dart';
import 'package:soprts_buissens_sciences_technology/Layout/cubit/state.dart';
import 'package:soprts_buissens_sciences_technology/Layout/home.dart';
import 'package:soprts_buissens_sciences_technology/network/dio_api/dio.dart';
import 'package:soprts_buissens_sciences_technology/network/local/bloc_observ.dart';
import 'package:soprts_buissens_sciences_technology/network/shared_preference/sharedPreference.dart';
import 'package:soprts_buissens_sciences_technology/style/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await SharedPreferenceCach.init();

  final bool? isDark = SharedPreferenceCach.getBoolean(key: 'isDark');

  runApp(Sport(isDark));
}

class Sport extends StatelessWidget {
  Sport(this.isDark);
  final bool? isDark;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()
        ..getSport()
        ..getTecnologie()
        ..getBusniss()
        ..getScience()
        ..changeMode()
        ..changeMode(isforme: isDark),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeLight,
            darkTheme: themeDark,
            themeMode:
                AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: Directionality(
                textDirection: TextDirection.rtl, child: HomeSports()),
          );
        },
      ),
    );
  }
}
