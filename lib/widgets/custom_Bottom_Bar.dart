import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/cubit/news_app_cubit.dart';

class customBottomBar extends StatelessWidget {
  const customBottomBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: NewsAppCubit.get(context).BottomNav,
      currentIndex: NewsAppCubit.get(context).currentIndex,
      onTap: (index){
        NewsAppCubit.get(context).changeBottomNavBar(index);
      },
    );
  }
}
// ConvexAppBar(
// initialActiveIndex: cubit.currentIndex,
// items: cubit.BottomNav,
// onTap: (index) {
// cubit.changeBottomNavBar(index);
// // print("index ${cubit.currentIndex}");
// },
// height: 45,
// style: TabStyle.react,
// backgroundColor:Colors.white,
// activeColor:  Colors.deepOrange,
// color:Colors.grey,
// elevation: 0.8,
// );