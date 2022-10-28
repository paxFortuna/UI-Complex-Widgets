import 'package:flutter/material.dart';
import 'package:ui_complex_widget/src/choice_chip_selector.dart';
import 'package:ui_complex_widget/src/pages/home_page.dart';

import 'src/bottom_bar.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => BottomBar()),
            );
          }, child: Text('Google Nav Bar'),),
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => ChoiceChipSelector()),
            );
          }, child: Text('Choice Chip Tip'),),
          ElevatedButton(onPressed: (){}, child: Text(''),),
          ElevatedButton(onPressed: (){}, child: Text(''),),
          ElevatedButton(onPressed: (){}, child: Text(''),),
          ElevatedButton(onPressed: (){}, child: Text(''),),
          ElevatedButton(onPressed: (){}, child: Text(''),),
          ElevatedButton(onPressed: (){}, child: Text(''),),
        ],
      ),
    );
  }
}
