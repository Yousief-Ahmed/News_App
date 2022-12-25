part of 'news_app_cubit.dart';

@immutable
abstract class NewsAppState {}

class NewsAppInitial extends NewsAppState {}

class NewsBottomNavBarState extends NewsAppState {}

class NewsGetBusinessLoadingState extends NewsAppState {}

class NewsGetSportsLoadingState extends NewsAppState {}

class NewsGetScienceLoadingState extends NewsAppState {}

class NewsGetSearchLoadingState extends NewsAppState {}

class NewsGetBusinessSuccessState extends NewsAppState {}

class NewsChangeIconState extends NewsAppState {}

class NewsChangeColorState extends NewsAppState {}

class NewsGetBusinessErrorState extends NewsAppState {
  final String error;
  NewsGetBusinessErrorState(this.error);
}

class NewsGetSportsSuccessState extends NewsAppState {}

class NewsGetSportsErrorState extends NewsAppState {
  final String error;
  NewsGetSportsErrorState(this.error);
}

class NewsGetScienceSuccessState extends NewsAppState {}

class NewsGetScienceErrorState extends NewsAppState {
  final String error;
  NewsGetScienceErrorState(this.error);
}

class NewsAppChangeModeState extends NewsAppState {}

class NewsGetSearchSuccessState extends NewsAppState {}

class NewsGetSearchErrorState extends NewsAppState {
  final String error;
  NewsGetSearchErrorState(this.error);
}