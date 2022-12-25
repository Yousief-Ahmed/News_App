import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_app_cubit.dart';
import 'package:news_app/cubit/news_app_cubit.dart';
import 'package:news_app/widgets/custom_Build_Item.dart';
import 'package:news_app/widgets/custom_Text.dart';

class CustomBusinessScreenBuilder extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {

    return BlocConsumer<NewsAppCubit, NewsAppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var business =NewsAppCubit.get(context).business;
        return ConditionalBuilder(
          condition:business.length>0,
          builder: (context) => ListView.separated(
            physics:  BouncingScrollPhysics(),
              itemBuilder:(context, index) =>CustomScreenBuilder(list:business[index]),
              separatorBuilder: (context, index) => const Divider(
                color: Colors.grey,
                indent: 15,
                endIndent: 15,
              ),
              itemCount:business.length,
          ),
          fallback:(context) => Center(child: CircularProgressIndicator()) ,
        );
      },
    );
  }
}
