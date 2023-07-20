import 'package:flutter/material.dart';
import '../../pet_dummy_data.dart';
import '../utils/styles.dart';

class PetContainer extends StatelessWidget {
  final int index;
  const PetContainer({super.key, required this.index});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 13, 8, 15),
      child: Container(
        width: 345,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 7, 13, 7),
              child: SizedBox(
                width: 115,
                height: 150,
                child: Image.asset(petList[index].petPhotoAsset),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 12, 13),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                     petList[index].petType,
                    style: TextStyles.textStyle22,
                  ),
                  const Spacer(),
                  Text(
                    petList[index].petCategory,
                    style: TextStyles.textStyle15
                        .copyWith(color: ColorStyles.kGreyBoldColor),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/pawprintImg.jpg',
                        width: 25,
                        height: 28,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Pet Love: ${ petList[index].petLoveCount}',
                        style: TextStyles.textStyle15
                            .copyWith(color: ColorStyles.kOrangeColor),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
