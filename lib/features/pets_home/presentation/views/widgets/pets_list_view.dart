import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/pet_container.dart';
import '../../../../../pet_dummy_data.dart';
class PetsListView extends StatelessWidget {
  const PetsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 8, 19),
      child: Container(
        width: 361,
        height: MediaQuery
            .of(context)
            .size
            .height * 0.74,
        color: ColorStyles.kGreyColor,
        child: ListView.builder(
          itemCount: petList.length, physics: const BouncingScrollPhysics(),
          itemBuilder:(context, index) {
            return PetContainer(index: index,);
          },

        ),
      ),
    );
  }
}