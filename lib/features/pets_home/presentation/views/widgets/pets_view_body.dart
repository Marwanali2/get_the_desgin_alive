import 'package:flutter/material.dart';
import 'package:get_the_desgin_alive/core/widgets/search_box.dart';
import 'package:get_the_desgin_alive/features/pets_home/presentation/views/widgets/pets_list_view.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/pet_container.dart';
import 'home_bar.dart';

class PetsViewBody extends StatelessWidget {
  const PetsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeBar(),
          SearchBox(),
          PetsListView(),
        ],
      ),
    );
  }
}




