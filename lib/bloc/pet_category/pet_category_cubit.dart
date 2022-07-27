import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petolgy/models/pet.dart';
import 'package:petolgy/services/dio/dio.dart';


part 'pet_category_state.dart';

class PetCategoryCubit extends Cubit<PetCategoryState> {
  PetCategoryCubit() : super(PetCategoryInitial());
  static PetCategoryCubit get(context)=>BlocProvider.of(context);

  List<Pet>? pet= [];

  Future<void> getPetCategoryById(int id) async {
    emit(PetCategoryLoadingState());
    await DioHelper.getData(url: 'categories/$id/pets',).then((value) {
      //print('hereee ${value.data}');
      pet = List<Pet>.from(value.data);
      print('kareem ${pet!.length}');
      emit(PetCategorySuccessState());
    }).catchError((onError){
      if(onError is DioError){
        print('${onError.response!.data['error']['message']}');
        emit(PetCategoryErrorState());
      }
    });
  }

}
