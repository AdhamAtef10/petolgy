import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petolgy/services/dio/dio.dart';
import 'package:petolgy/services/dio/end_points.dart';


import '../../models/section.dart';

part 'section_state.dart';

class SectionCubit extends Cubit<SectionState> {
  SectionCubit() : super(SectionInitial());
  static SectionCubit get(context)=>BlocProvider.of(context);

  Section? section;
  Future<void> getSection() async {
    emit(SectionLoadingState());
    await DioHelper.getData(url: first_section,).then((value) {
      print(value.data);
      section = Section.fromJson(value.data);
      emit(SectionSuccessState());
    }).catchError((onError){
      if(onError is DioError){
        print('${onError.response!.data['error']['message']}');
        emit(SectionErrorState());
      }
    });
  }

}
