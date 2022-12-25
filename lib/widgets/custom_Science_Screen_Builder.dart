import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_app_cubit.dart';
import 'package:news_app/cubit/news_app_cubit.dart';
import 'package:news_app/widgets/custom_Build_Item.dart';
import 'package:news_app/widgets/custom_Text.dart';

class CustomScienceScreenBuilder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<NewsAppCubit, NewsAppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var science=NewsAppCubit.get(context).science;
        return ConditionalBuilder(
          condition:science.length>0,
          builder: (context) => ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder:(context, index) =>CustomScreenBuilder(list:science[index]),
            separatorBuilder: (context, index) => const Divider(
              color: Colors.grey,
              indent: 15,
              endIndent: 15,
            ),
            itemCount:science.length ,
          ),
          fallback:(context) => Center(child: CircularProgressIndicator()) ,
        );
      },
    );

  }
}

