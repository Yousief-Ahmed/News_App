import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_app_cubit.dart';
import 'package:news_app/widgets/custom_Sports_Screen_Builder.dart';
import 'package:news_app/widgets/custom_Text.dart';

class Sports extends StatelessWidget {
  const Sports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sports=NewsAppCubit.get(context).sports;
    return CustomSportsScreenBuilder();

  }
}
