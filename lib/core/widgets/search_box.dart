import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/styles.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      //bottom 19
      padding: const EdgeInsets.only(bottom: 19,right: 13,left: 13),
      child: Container(
        width: 369,
        height: 50,
        decoration: BoxDecoration(
          color: ColorStyles.kGreyColor,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // I tried to remove the background of image with online website but it still not suitable
            // I used Svg to increase the quality of icon search but it didn't displayed this is the code,
            // SvgPicture.asset(
            //                     'assets/svg/icon_search.svg',
            //                   ),
            Padding(
              padding: const EdgeInsets.only(right: 20,),
              child: IconButton(
                onPressed: () {},
                icon: Transform.rotate(
                  angle: 3.14 / 2,
                  child: const Icon(Icons.search, size: 25, color: ColorStyles.kOrangeColor),
                ),
              )
            ),

            SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search by pet type ",
                  hintStyle: TextStyles.textStyle22.copyWith(
                    color: ColorStyles.kGreyBoldColor,
                    fontSize: 20
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
