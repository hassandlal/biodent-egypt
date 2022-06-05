import 'package:biodent/layout/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppinitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  int selectedVal=1;
  changeSelectedVal(int value){
    selectedVal = value;
    emit(changeSelectedValsucessState());
  }

  showMenus(BuildContext context, List<PopupMenuItem> dropDownList,
      GlobalKey key) async {
    final render = key.currentContext!.findRenderObject() as RenderBox;
    int selectedValue = await showMenu(
      color: Colors.cyan,
      context: context,
      position: RelativeRect.fromLTRB(
          render.localToGlobal(Offset.zero).dx,
          render.localToGlobal(Offset.zero).dy + 50,
          double.infinity,
          double.infinity),
      items: dropDownList,
    );
    changeSelectedVal(selectedValue);
    emit(changeSelectedValtwosucessState());

  }
  void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch ';
  String aboutUsDropDownVAlue = 'About us';



}