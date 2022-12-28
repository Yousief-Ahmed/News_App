import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/utilites/constant.dart';
import 'package:news_app/cubit/news_app_cubit.dart';
import 'package:news_app/widgets/custom_Image.dart';
import 'package:news_app/widgets/custom_WebView_Screen.dart';

import 'custom_Text.dart';

class CustomScreenBuilder extends StatelessWidget {
  var list;
 CustomScreenBuilder({required this.list});
  @override
  Widget build(BuildContext context,) {
    return ListTile (
      onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewScreen(list['url'])));
      },
      title:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Images(networkImage:list['urlToImage'].toString()),
          const SizedBox(width:10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomText(txt: list['title'],
                    lines: 3,
                    txtDirection: TextDirection.rtl,
                    txtStyle:Theme.of(context).textTheme.bodyText1
                ),
                SizedBox(height: 10,),
                CustomText(txt: list['publishedAt'],
                txtStyle:Theme.of(context).textTheme.caption,
          ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
