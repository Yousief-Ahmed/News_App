import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utilites/app_strings.dart';
import 'package:news_app/core/utilites/constant.dart';
import 'package:news_app/dio/dio_helper.dart';
import 'package:news_app/screens/business.dart';
import 'package:news_app/screens/science.dart';
import 'package:news_app/screens/sports.dart';
part 'news_app_state.dart';

class NewsAppCubit extends Cubit<NewsAppState> {
  NewsAppCubit() : super(NewsAppInitial());
  static NewsAppCubit get(context)=>BlocProvider.of(context);

  int currentIndex=0;

  List<BottomNavigationBarItem>BottomNav= const[
    BottomNavigationBarItem(icon:Icon(Icons.sports) ,label:AppStrings.bottomNavigatorSports),
    BottomNavigationBarItem(icon: Icon(Icons.business),label:AppStrings.bottomNavigatorBusiness),
    BottomNavigationBarItem(icon: Icon(Icons.science),label:AppStrings.bottomNavigatorScience),
  ];
  void changeBottomNavBar(int index){
    currentIndex=index;
    emit(NewsBottomNavBarState());
  }

  List<Widget>screens=
  [
    Sports(),
    Business(),
    Science(),
  ];
  List<dynamic>business=[];
  void getBusiness(){
    emit(NewsGetBusinessLoadingState());
    DioHelper.getData(
        url: AppConstant.url,
        query:{
          'country':'eg',
          'category':'business',
          'apikey':AppConstant.apiKey,
        },
    ).then((value){
      business=value.data['articles'];
      emit(NewsGetBusinessSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(NewsGetBusinessErrorState(error.toString()));
    });
  }

  List<dynamic>sports=[];
  void getSports(){
    emit(NewsGetSportsLoadingState());
    DioHelper.getData(
        url: AppConstant.url,
        query:{
          'country':'eg',
          'category':'sports',
          'apikey':AppConstant.apiKey,
        }
    ).then((value){
      sports=value.data['articles'];
      emit(NewsGetSportsSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(NewsGetSportsErrorState(error.toString()));
    });
  }

  List<dynamic>science=[];
  void getScience(){
    emit(NewsGetScienceLoadingState());
    DioHelper.getData(
        url: AppConstant.url,
        query:{
          'country':'eg',
          'category':'science',
          'apikey':AppConstant.apiKey,
        }
    ).then((value){
      science=value.data['articles'];
      emit(NewsGetScienceSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(NewsGetScienceErrorState(error.toString()));
    });
  }

  IconData darkIcon=Icons.dark_mode_outlined;
  bool isLight=true;

  void changeIcon({required IconData darkIcon, required bool isLight}){
    this.darkIcon=darkIcon;
    this.isLight=isLight;
    emit(NewsChangeIconState());
  }
void changeMode(){

      isLight = !isLight;
      emit(NewsAppChangeModeState());

  }
List <dynamic> search=[];
  void getSearchData(String value){
    search = [];
    emit(NewsGetSearchLoadingState());
    DioHelper.getData(
        url: 'v2/everything',
        query:{
          'q':'$value',
          'apikey':AppConstant.apiKey,
        }
    ).then((value){
      search=value.data['articles'];
      emit(NewsGetSearchSuccessState());
    }).catchError((error){
      emit(NewsGetSearchErrorState(error));
    });
  }
}
