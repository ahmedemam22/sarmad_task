import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
class CloseButtonShape extends StatelessWidget {
  const CloseButtonShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>Navigator.pop(context),
      child: Icon(Icons.close, color:black),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: grey, // <-- Button color
      ),
    );
  }
}
