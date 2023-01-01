import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_app/cubit/bloc_observer.dart';
import 'package:news_app/cubit/news_app_cubit.dart';

import 'package:news_app/home_app.dart';
import 'package:news_app/network/dio/dio_helper.dart';

import 'core/themes/themes.dart';
void main()async {
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsAppCubit()..getSports()..getBusiness()..getScience()..changeMode(),
      child: BlocConsumer<NewsAppCubit, NewsAppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: NewsAppCubit.get(context).isLight ? ThemeMode.dark : ThemeMode.light,
            home: HomeApp(),
          );
        },
      ),
    );
  }
}

