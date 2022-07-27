part of 'pet_category_cubit.dart';

@immutable
abstract class PetCategoryState {}

class PetCategoryInitial extends PetCategoryState {}
class PetCategoryLoadingState extends PetCategoryState {}
class PetCategorySuccessState extends PetCategoryState {}
class PetCategoryErrorState extends PetCategoryState {}

