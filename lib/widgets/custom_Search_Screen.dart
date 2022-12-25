import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_app_cubit.dart';
import 'package:news_app/cubit/news_app_cubit.dart';
import 'package:news_app/widgets/custom_Build_Item.dart';
import 'package:news_app/widgets/custom_TextForm.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsAppCubit, NewsAppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        bool isSearch=true;
        var searchScreen=NewsAppCubit.get(context).search;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
          child: Scaffold(
            appBar:AppBar(
              title: TextForm(),
            ),
            body: ConditionalBuilder(
                condition:searchScreen.length>0,
                builder: (context) => ListView.separated(
                  itemBuilder:(context, index) => CustomScreenBuilder(list: searchScreen[index]),
                  separatorBuilder: (context, index) => const Divider(
                    color: Colors.grey,
                    indent: 15,
                    endIndent: 15,
                  ),
                  itemCount: searchScreen.length,
                ),
                fallback:(context) => isSearch==true? Container(): Center(child: CircularProgressIndicator()),
            ),
          ),
        );
      },
    );
  }
}
