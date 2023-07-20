import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../pet_dummy_data.dart';
import '../utils/styles.dart';

class SearchBox extends StatelessWidget {
  SearchBox({Key? key}) : super(key: key);
  String? enteredText;
  TextEditingController txtQuery = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 19, right: 13, left: 13),
      child: Container(
        width: 369,
        height: 50,
        decoration: BoxDecoration(
          color: ColorStyles.kGreyColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextFormField(
          controller: txtQuery,
          // onChanged: search,
          style: TextStyles.textStyle22,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: "Search by pet type",
            hintStyle: TextStyles.textStyle22
                .copyWith(color: ColorStyles.kGreyBoldColor, fontSize: 20),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorStyles.kGreyColor,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorStyles.kGreyColor,
              ),
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
            prefixIcon: Transform.rotate(
              angle: 3.14 / 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                    color: ColorStyles.kOrangeColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void searchMethod() {}
}

