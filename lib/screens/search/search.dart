import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soprts_buissens_sciences_technology/Layout/cubit/cubit.dart';
import 'package:soprts_buissens_sciences_technology/Layout/cubit/state.dart';
import 'package:soprts_buissens_sciences_technology/components/components.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  final textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var list = AppCubit.get(context).search;
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: defaultFormFile(
                    controller: textcontroller,
                    validator: (value) {
                      if (value.isEmpty)
                        return 'please enter reachech';
                      else
                        return null;
                    },
                    lable: 'Search',
                    prefix: Icons.search,
                    onsubmit: (String value) {
                      AppCubit.get(context).getSearch(value);
                    }),
              ),
              Expanded(child: listViewBuilder(context, list)),
            ],
          ),
        );
      },
    );
  }
}
