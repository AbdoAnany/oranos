import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/presentation/pages/0_start_screen/widget/start_body.dart';
import '../../../utilities/app_assets.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AppAssets.startBackgroundImage,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          const StartBody(),
        ],
      ),
    );
  }
}

