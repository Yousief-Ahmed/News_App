import 'package:flutter/material.dart';
import 'package:news_app/cubit/news_app_cubit.dart';
import 'package:news_app/widgets/custom_Business_Screen_Builder.dart';
import 'package:news_app/widgets/custom_Text.dart';

class Business extends StatelessWidget {
  const Business({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBusinessScreenBuilder();
    //   FloatingActionButton(onPressed: (){
    //   NewsAppCubit.get(context).getBusiness();
    // },
    //   child: Icon(Icons.add),
    // );
  }
}
