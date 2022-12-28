import 'package:flutter/material.dart';
import 'package:news_app/core/utilites/constant.dart';
import 'package:news_app/cubit/news_app_cubit.dart';

class Images extends StatelessWidget {
  final String networkImage;
  Images({required this.networkImage});
  @override
  Widget build(BuildContext context) {
    return  Image(
      image: NetworkImage(networkImage),
      height: AppConstant.imageSpecs,
      width: AppConstant.imageSpecs,
      fit: BoxFit.fill,
      errorBuilder: (context, error, stackTrace){
        if(NewsAppCubit.get(context).currentIndex==0){
          return const Image(image: NetworkImage(AppConstant.sportsErrorImage),
            height: AppConstant.imageSpecs,
            width: AppConstant.imageSpecs,
            fit: BoxFit.fill,);
        }else if (NewsAppCubit.get(context).currentIndex==1){
          return const Image(image: NetworkImage(AppConstant.businessErrorImage),
            height: AppConstant.imageSpecs,
            width: AppConstant.imageSpecs,
            fit: BoxFit.fill,);
        }else {
          return const Image (image: NetworkImage(AppConstant.scienceErrorImage),
            height: AppConstant.imageSpecs,
            width: AppConstant.imageSpecs,
            fit: BoxFit.fill,);
        }
      },
    );
  }
}
