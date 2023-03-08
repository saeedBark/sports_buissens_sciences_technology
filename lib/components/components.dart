import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:soprts_buissens_sciences_technology/widget/buiderItem.dart';

Widget myDivider() => const Divider(
      thickness: 1,
    );

//////////////// listViewBuilder /////////////
Widget listViewBuilder(context, list) => ConditionalBuilder(
      condition: list.length > 0,
      builder: (context) => ListView.separated(
        itemBuilder: (context, index) => builerItemApp(context, list[index]),
        separatorBuilder: (context, index) => myDivider(),
        itemCount: 10,
      ),
      fallback: (context) => const Center(child: CircularProgressIndicator()),
    );

///////////////

Widget defaultFormFile({
  required TextEditingController controller,
  Function? onsubmit,
  required Function validator,
  required String lable,
  required IconData prefix,
  Function? onTap,
  TextInputType? type,
  IconData? suffix,
  bool enable = true,
  bool isPassword = false,
}) =>
    TextFormField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: type,
      onFieldSubmitted: (s) {
        onsubmit!(s);
      },
      validator: (s) {
        validator(s);
      },
      enabled: enable,
      decoration: InputDecoration(
        labelText: lable,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null ? Icon(suffix) : null,
        border: const OutlineInputBorder(),
      ),
    );
