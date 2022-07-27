import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petolgy/bloc/section/section_cubit.dart';


class FirstContainer extends StatelessWidget {
  const FirstContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SectionCubit, SectionState>(
      listener: (context, state) {},
      builder: (context, state) {
        var sectionCubit = SectionCubit.get(context);
        return Container(
          height: 500,
          width: double.infinity,
          color: HexColor("#56392D"),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    Text('${sectionCubit.section?.title }',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40
                      ),),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        '${sectionCubit.section?.body}',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: const Padding(
                              padding: EdgeInsets.only(left: 85),
                              child: const Text(
                                "Help them",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: Colors.black,
                          )
                        ],
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(300, 50),
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                      width: 700,
                      height: 300,
                      child:
                      Image.asset('assets/images/Ellipse 2.png')),
                  Positioned(
                    bottom: 75,
                    child: Container(
                      color: Colors.transparent,
                      height: 75,
                      width: 200,
                      child: Material(
                        color: Colors.transparent,
                        elevation: 10,
                        borderRadius: BorderRadius.circular(250),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: SizedBox(
                        width: 500,
                        height: 500,
                        child: Image.asset('assets/images/dog 3.png')),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
