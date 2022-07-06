import 'package:flutter/material.dart';
import 'package:jaxa_anvarov/core/colors/app_colors.dart';
import 'package:jaxa_anvarov/core/constants/size_config.dart';
import 'package:jaxa_anvarov/core/images/app_images.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(
          getW(20.0),
        ),
        bottomRight: Radius.circular(
          getW(20.0),
        ),
      ),
      child: Drawer(
        backgroundColor: AppColors.bgColor,
        child: Center(
          child: Column(
            children: [
              Container(
                width: getW(70.0),
                height: getW(70.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(AppImages.LOGO),
                  ),
                ),
              ),
              Text(
                "JaxaAnvarov",
                style: TextStyle(
                  fontSize: getW(20.0),
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
