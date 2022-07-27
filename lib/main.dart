import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petolgy/services/dio/dio.dart';
import 'package:petolgy/src/app_root.dart';


import 'bloc/observer.dart';

void main() async {
  await DioHelper.init();
  BlocOverrides.runZoned(
    () {
      // Use cubits...
      runApp(AppRoot());
    },
    blocObserver: MyBlocObserver(),
  );
}
