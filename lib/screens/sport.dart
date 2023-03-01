import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soprts_buissens_sciences_technology/Layout/cubit/cubit.dart';
import 'package:soprts_buissens_sciences_technology/Layout/cubit/state.dart';
import 'package:soprts_buissens_sciences_technology/components/components.dart';
import 'package:soprts_buissens_sciences_technology/widget/buiderItem.dart';
//import 'package:soprts_buissens_sciences_technology/widget/buiderItem.dart';

class SporScreen extends StatelessWidget {
  const SporScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = AppCubit.get(context).sportEg;
        return listViewBuilder(context, list);
      },
    );
  }
  // Widget builerItemApp(context , item){
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Container(
  //       height: 120,
  //       child: Row(
  //         // mainAxisAlignment: MainAxisAlignment.start,
  //         children: [
  //           Container(
  //               width: 150,
  //               height: 120,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(10),
  //                 image: DecorationImage(
  //                   image: NetworkImage('${item['urlToImage']}'),
  //                   // Image.network('https://alkhaleej-services.net/user_images/news/14-02-23-641230428.jpg'),
  //                   fit: BoxFit.cover,
  //                 ),
  //               )),
  //           SizedBox(
  //             width: 10,
  //           ),
  //           Expanded(
  //             child: Column(
  //               //mainAxisAlignment: MainAxisAlignment.start,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Expanded(
  //                   child: Text(
  //                     '${item['title']} ',
  //                     style: TextStyle(
  //                       fontSize: 24,
  //                       fontWeight: FontWeight.bold,
  //                     ),
  //                     maxLines: 3,
  //                     overflow: TextOverflow.ellipsis,
  //                   ),
  //                 ),
  //                 Text(
  //                   '${item['source']['name']}',
  //                   style: Theme.of(context).textTheme.bodyLarge,
  //                 ),
  //                 Text('${item['publishedAt']}'),
  //               ],
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
