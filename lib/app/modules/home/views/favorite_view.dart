import 'package:flutter/material.dart';
import 'package:gepg_min_app_u_i/app/modules/home/controllers/favorite_controller.dart';
import 'package:get/get.dart';

class FavoriteView extends GetView<FavoriteController> {
  const FavoriteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Page"),
      ),
    );
  }
}
