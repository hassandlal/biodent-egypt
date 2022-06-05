import 'package:flutter/material.dart';

import '../../layout/cubit/cubit.dart';
Widget drawDivider() {
  return Container(
    width: double.infinity,
    height: 1,
    color: Colors.grey,
  );
}

void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

void navigateAndFinish(context, widget,) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
          (route) {
        return false;
      },
    );

Widget drawListTile(String title ,int selectedVal,AppCubit cubit){
  return  ListTile(
      onTap: () {
        cubit.changeSelectedVal(selectedVal);
      },
      title: cubit.selectedVal==selectedVal?Text(title,
          style: TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.cyanAccent,
              fontSize: 15,
              fontWeight: FontWeight.bold)):Text(title,
          style: TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold)));
}
Widget drawUrlRow(String url,String txt,AppCubit cubit){
  return Row(
    children: [
      Text(
        '-',
        style: TextStyle(
            color: Colors.red, fontSize: 15),
      ),
      Expanded(
        child: InkWell(
            onTap: () {
              cubit.launchURL(
                 url);
            },
            child: Text(
              txt,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey, fontSize: 15),
            )),
      )
    ],
  );
}
Widget drawFooterCard(String txt,String url,int imageNum,AppCubit cubit){
  return InkWell(
    onTap:(){
      cubit.launchURL(url);
    },
    child: Column(children: [
      Image.asset('assets/images/$imageNum.jpg'),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(txt,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
      )
    ],),
  );
}
Widget drawSmallListTile(String title ,int selectedVal,AppCubit cubit){
  return  ListTile(
      onTap: () {
        cubit.changeSelectedVal(selectedVal);
      },
      title: cubit.selectedVal==selectedVal?Text(title,
          style: TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.cyanAccent,
              fontSize: 9,
              fontWeight: FontWeight.bold)):Text(title,
          style: TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.black,
              fontSize: 9,
              fontWeight: FontWeight.bold)));
}