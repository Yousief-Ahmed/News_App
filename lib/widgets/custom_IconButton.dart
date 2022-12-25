import 'package:flutter/material.dart';
import 'package:news_app/cubit/news_app_cubit.dart';

class CustomIconButton extends StatelessWidget {
  final IconData? icon;
  final double? size;
  //final double? radius;
  final Color? color;
  final Function ? onPressed;
  CustomIconButton({this.icon,this.size,this.color,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
        color: color,
        iconSize: size,
        splashRadius: size,
      // onPressed:(){
      //   if(cubit.isLight==true){
      //     print(cubit.isLight.toString());
      //     print(cubit.dark.toString());
      //     cubit.changeIcon(dark: Icons.dark_mode,isLight: false);
      //     print(cubit.isLight.toString());
      //     print(cubit.dark.toString());
      //   }else{
      //     cubit.changeIcon(dark: Icons.dark_mode_outlined,isLight: true);
      //     print(cubit.isLight.toString());
      //     print(cubit.dark.toString());
      //   }
      // },
      onPressed: (){
       onPressed!();
      },


    );
  }
}
// (){
// if(cubit.isLight==true){
// print(cubit.isLight.toString());
// print(cubit.dark.toString());
// cubit.changeIcon(dark: Icons.dark_mode,isLight: false);
// print(cubit.isLight.toString());
// print(cubit.dark.toString());
// }else{
// cubit.changeIcon(dark: Icons.dark_mode_outlined,isLight: true);
// print(cubit.isLight.toString());
// print(cubit.dark.toString());
// }
// }