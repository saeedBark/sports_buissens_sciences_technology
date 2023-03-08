import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soprts_buissens_sciences_technology/Layout/cubit/cubit.dart';
import 'package:soprts_buissens_sciences_technology/Layout/cubit/state.dart';
import 'package:soprts_buissens_sciences_technology/components/components.dart';


class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var list = AppCubit.get(context).busniss;

        return listViewBuilder(context, list);
      },
    );
  }
}
