
import 'package:flutter/material.dart';
import 'package:get_the_desgin_alive/features/pets_home/presentation/views/widgets/pets_view_body.dart';

class PetsView extends StatelessWidget {
  const PetsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PetsViewBody(),
      ),
    );
  }
}
