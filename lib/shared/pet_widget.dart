import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PetWidget extends StatelessWidget {
  const PetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
          border:
          Border.all(color: HexColor('#492F24'))),
      child: Column(
        children: [
          Image.asset('assets/images/cat 1.png',
            height: 200,
            width: 150,
          ),
          Text('Caty',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: HexColor('#492F24'),
            )
            ,),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              child: Text(
                "Read more",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: HexColor("#FFE3C5"),
                ),
              ),
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    HexColor("#492F24"),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)
                      )
                  )
              )
          ),
        ],
      ),
    );
  }
}
