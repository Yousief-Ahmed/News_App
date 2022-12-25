import 'package:flutter/material.dart';
import 'package:news_app/core/utilites/app_strings.dart';
import 'package:news_app/core/utilites/constant.dart';
import 'package:news_app/cubit/news_app_cubit.dart';

class TextForm extends StatefulWidget {

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  TextEditingController search=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:search ,

      onChanged: (value) {
        setState(() {
          value=search.text;
        });
         NewsAppCubit.get(context).getSearchData(value);
      },
      keyboardType: TextInputType.text,
      decoration: InputDecoration(

        // contentPadding: EdgeInsets.all(20),
        label: Text(
          AppStrings.TxtFormLabel,
          style: TextStyle(
            color:  NewsAppCubit.get(context).isLight==true?Colors.white:Colors.black45,
          ),
        ),
        border:OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        ),
        constraints: BoxConstraints(
          maxHeight: 45,
        ),
        prefixIcon: Icon(Icons.search,color: NewsAppCubit.get(context).isLight==true?Colors.white:Colors.black45),
      ),
    );
  }
}
