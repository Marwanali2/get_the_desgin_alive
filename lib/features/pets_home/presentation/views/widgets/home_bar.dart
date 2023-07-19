import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        width: double.infinity,
        height: 86,
        color: ColorStyles.kGreyColor,
        child: Center(
          child: Text(
            'Pet Market',
            style: TextStyles.textStyle30,
          ),
        ),
      ),
    );
  }
}