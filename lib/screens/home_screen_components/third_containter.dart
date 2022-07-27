import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petolgy/bloc/pet_category/pet_category_cubit.dart';
import 'package:petolgy/screens/adaption_screen.dart';
import 'package:petolgy/utlis/navigation.dart';


class ThirdContainer extends StatefulWidget {
  const ThirdContainer({Key? key}) : super(key: key);

  @override
  State<ThirdContainer> createState() => _ThirdContainerState();
}

class _ThirdContainerState extends State<ThirdContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PetCategoryCubit, PetCategoryState>(
      listener: (context, state) {},
      builder: (context, state) {
        var petcubit = PetCategoryCubit.get(context);
        return Container(
          height: 500,
          width: double.infinity,
          color: HexColor('#F1F1F1'),
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Lets get this right .... ',
                        style: TextStyle(
                          color: HexColor("#492F24"),
                          fontSize: 22,),
                      ),
                    ),
                    Image.asset(
                      'assets/images/Icon material-pets right hand .png',
                      width: 50,
                      height: 50,
                      color: HexColor("#FFE3C5"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('What kind of friend you looking for?',
                    style: TextStyle(
                        fontSize: 17,
                        color: HexColor("#492F24"),
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        print(petcubit.pet);
                        AppNavigator.customNavigator(
                            context: context,
                            screen: AdaptionScreen(id: 1),
                            finish: false,
                        );
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                            Border.all(color: HexColor('#492F24'))),
                        child: Column(
                          children: [
                            Image.asset('assets/images/Icon dog.png',
                              height: 100,
                              width: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Dogs',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#492F24'),
                              )
                              ,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        AppNavigator.customNavigator(
                          context: context,
                          screen: AdaptionScreen(id: 2),
                          finish: false,
                        );
                        print(petcubit.pet);
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                            Border.all(color: HexColor('#492F24'))),
                        child: Column(
                          children: [
                            Image.asset('assets/images/Icon cat.png',
                              height: 100,
                              width: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Cats',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#492F24'),
                              )
                              ,),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
