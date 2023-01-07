import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/presentation/widgets/oranos_logo.dart';
import 'package:tatware_task_oranos/utilities/app_strings.dart';

class StartTitle extends StatelessWidget {
  const StartTitle({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:   FadeInUp(
        duration: Duration(milliseconds: 500),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
           OranosLogo(),
            SizedBox(
              height: 16,
            ),
            Text(
              AppStrings.expertFromEveryPlanet,
              style:TextStyle(color: Color(0xff5f5f5f),fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
