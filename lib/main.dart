import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_app/cubit/bloc_observer.dart';
import 'package:news_app/cubit/news_app_cubit.dart';

import 'package:news_app/home_app.dart';
import 'package:news_app/network/dio/dio_helper.dart';
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
            theme: ThemeData(
              textTheme: const TextTheme(
                headline6: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                bodyText1: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  overflow: TextOverflow.ellipsis,
                ),
                caption: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,

                ),
              ),
              primarySwatch: Colors.deepOrange,
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: const AppBarTheme(
                titleTextStyle: TextStyle(color: Colors.black),
                iconTheme: IconThemeData(color: Colors.black),
                backgroundColor: Colors.white,
                elevation: 0.0,
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.white,
                  statusBarIconBrightness: Brightness.dark,
                ),
              ),
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
               // type: BottomNavigationBarType.shifting,
                //showUnselectedLabels: true,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Colors.deepOrange,
              ),
            ),
            darkTheme: ThemeData(
              textTheme: const TextTheme(
                headline6: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
                bodyText1: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  overflow: TextOverflow.ellipsis,
                ),
                caption: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              scaffoldBackgroundColor: HexColor('333739'),
              primarySwatch: Colors.deepOrange,
              appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(color: Colors.white),
                backgroundColor: HexColor('333739'),
                elevation: 1.0,
                titleTextStyle: const TextStyle(color: Colors.white),
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: HexColor('333739'),
                  statusBarIconBrightness: Brightness.light,
                ),
              ),
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                //type: BottomNavigationBarType.shifting,
                backgroundColor: Colors.black12,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Colors.deepOrangeAccent,
                //showUnselectedLabels: true,
              ),

            ),
            themeMode: NewsAppCubit.get(context).isLight ? ThemeMode.dark : ThemeMode.light,
            home: HomeApp(),
          );
        },
      ),
    );
  }
}

