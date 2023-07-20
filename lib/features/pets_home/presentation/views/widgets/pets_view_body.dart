import 'package:flutter/material.dart';
import 'package:get_the_desgin_alive/core/widgets/search_box.dart';
import 'package:get_the_desgin_alive/features/pets_home/presentation/views/widgets/pets_list_view.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/pet_container.dart';
import '../../../../../pet_dummy_data.dart';
import '../../../data/models/pet_model.dart';
import 'home_bar.dart';

class PetsViewBody extends StatefulWidget {
  const PetsViewBody({Key? key}) : super(key: key);

  @override
  State<PetsViewBody> createState() => _PetsViewBodyState();
}

class _PetsViewBodyState extends State<PetsViewBody> {
  String searchText = '';
  List<Pet> get filteredPetList {
    if (searchText.isEmpty) {
      return [];
    } else {
      return petList
          .where((pet) => pet.petType.toLowerCase().contains(searchText.toLowerCase()))
          .toList();

    }
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
        const  HomeBar(),
          Padding(
            padding: const EdgeInsets.only(bottom: 19, right: 13, left: 13),
            child: Container(
              width: 369,
              height: 50,
              decoration: BoxDecoration(
                color: ColorStyles.kGreyColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                // onChanged: search,
                style: TextStyles.textStyle22,
                cursorColor: Colors.black,
                onChanged: (data){
                  searchText=data;
                  setState(() {

                  });
                },
                decoration: InputDecoration(
                  hintText: "Search by pet type",
                  hintStyle: TextStyles.textStyle22.copyWith(
                      color: ColorStyles.kGreyBoldColor, fontSize: 20),
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
                        icon: const Icon(
                          Icons.search,
                          size: 30,
                          color: ColorStyles.kOrangeColor,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 8, 19),
            child: Container(
              width: 361,
              height: MediaQuery.of(context).size.height * 0.74,
              color: ColorStyles.kGreyColor,
              child: ListView.builder(
                itemCount: searchText.isEmpty?petList.length:filteredPetList.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  if(searchText.isEmpty){
                    return PetContainer(
                      index: index,
                    );
                  }
                 else{
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
                               child: Image.asset(filteredPetList[index].petPhotoAsset),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(0, 12, 12, 13),
                             child: Column(

                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(
                                   filteredPetList[index].petType,
                                   style: TextStyles.textStyle22,
                                 ),
                                 const Spacer(),
                                 Text(
                                   filteredPetList[index].petCategory,
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
                                       'Pet Love: ${filteredPetList[index].petLoveCount}',
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
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// children: [
// HomeBar(),
// SearchBox(),
// PetsListView(),
// ],
