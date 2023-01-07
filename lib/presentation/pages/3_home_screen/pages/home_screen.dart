import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/presentation/pages/3_home_screen/widgets/home_botom_sheet.dart';
import 'package:tatware_task_oranos/presentation/pages/3_home_screen/widgets/online_experts_widget.dart';
import 'package:tatware_task_oranos/presentation/pages/3_home_screen/widgets/recommended_experts_widget.dart';
import 'package:tatware_task_oranos/presentation/widgets/oranos_logo.dart';

import '../../../../utilities/app_assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsetsDirectional.only(start: 5),
          child: Image.asset(
            AppAssets.profile,
          ),
        ),
        title:  const OranosLogo(size: 20),
        actions: [
          SizedBox(
            child: Image.asset(
              AppAssets.search,
              width: 20,
              height: 20,
            ),
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),

      body: Stack(
        fit: StackFit.expand,
        children: [
          ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: const [
                RecommendedExpertsWidget(),
                SizedBox(height: 40,),
                OnlineExpertsWidget()
              ]),

          const HomeBottomSheet(),


        ],
      ),
    );
  }
}
