import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petolgy/services/cache_helper/cache_helper.dart';
import 'package:petolgy/services/dio/dio.dart';
import 'package:petolgy/services/dio/end_points.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context)=>BlocProvider.of(context);

  Future<void> getLogin(String email, String password) async {
    emit(LoginLoadingState());
    await DioHelper.postData(url: login, query: {
      "email" : email,
      "password" : password,
    }).then((value) {
      print(value.data);
      String token = value.data['accessToken'];
      SharedPreferencesHelper.sharedPreferences?.setString('token', value.data['accessToken']);
      emit(LoginSuccessState());
    }).catchError((onError){
      if(onError is DioError){
        print('${onError.response!.data['error']['message']}');
        emit(LoginErrorState(onError));
      }
    });
  }
}
