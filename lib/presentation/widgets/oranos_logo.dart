
import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';
import '../../utilities/app_assets.dart';

class OranosLogo extends StatelessWidget {
   const OranosLogo({Key? key, this.size=41}) : super(key: key);
  final double size;
  @override
  Widget build(BuildContext context) {
    return     Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      textBaseline: TextBaseline.ideographic,
      children: [
        Image.asset(AppAssets.oranosImage,height: size),

         Icon(
          Icons.circle,
          size: size/4,
          color: AppColors.primaryColor,
        )
      ],
    );
  }
}
