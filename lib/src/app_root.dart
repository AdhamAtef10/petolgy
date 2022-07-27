import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petolgy/bloc/login_cubit/login_cubit.dart';
import 'package:petolgy/bloc/pet_category/pet_category_cubit.dart';
import 'package:petolgy/screens/login_screen.dart';


import '../bloc/section/section_cubit.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => LoginCubit()),
        BlocProvider(create: (BuildContext context) => SectionCubit()..getSection()),
        BlocProvider(create: (BuildContext context) => PetCategoryCubit()),
      ],
      child: MaterialApp(
        home: LoginScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
