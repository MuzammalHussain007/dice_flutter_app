import 'package:flutter/material.dart';

import 'dice_widget.dart';

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DiceWidget(),
    );
  }
}


