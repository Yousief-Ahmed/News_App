import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_app_cubit.dart';
import 'package:news_app/widgets/custom_Bottom_Bar.dart';
import 'package:news_app/widgets/custom_IconButton.dart';
import 'package:news_app/widgets/custom_Search_Screen.dart';
import 'package:news_app/widgets/custom_Text.dart';
class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsAppCubit,NewsAppState>(
      listener: (context, state) {} ,
      builder: (context, state) {
        var cubit=NewsAppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: CustomText(
              txt: "News App",
              //color: Colors.black,
              txtStyle: Theme.of(context).textTheme.headline6,
            ),
            actions: [
              CustomIconButton(
                icon: Icons.search,
                size: 25,
                onPressed: (){
                 Navigator.push(context,
                     MaterialPageRoute(builder: (context) => SearchScreen(),));
                 NewsAppCubit.get(context).search.clear();
                },
              ),
              CustomIconButton(
                //color: Colors.black,
                size: 25,
                icon:cubit.isLight?Icons.dark_mode:Icons.dark_mode_outlined,
                onPressed: (){
                    if(cubit.isLight==true){
                      cubit.changeIcon(darkIcon: Icons.dark_mode,isLight: false);
                    }else{
                      cubit.changeIcon(darkIcon: Icons.dark_mode_outlined,isLight: true);

                    }
                },
              ),
               ],
          ),
          bottomNavigationBar: customBottomBar(),
          body: cubit.screens[cubit.currentIndex],
        );
      },
    );
  }
}
