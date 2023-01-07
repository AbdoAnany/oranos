import 'package:animate_do/animate_do.dart';
import 'package:tatware_task_oranos/presentation/pages/1_welcome_screen/welcome_screen.dart';
import 'package:tatware_task_oranos/presentation/widgets/primary_button.dart';
import 'package:tatware_task_oranos/presentation/pages/0_start_screen/widget/start_title.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';
import 'package:tatware_task_oranos/utilities/app_strings.dart';

import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/presentation/widgets/language_sub_title.dart';

import '../../../../utilities/app_helper.dart';

class StartBody extends StatelessWidget {
  const StartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const StartTitle(),


          FadeInUp(
            duration: Duration(milliseconds: 700),
            child: PrimaryButton(
              text: AppStrings.getStarted,
              onPressed: () =>AppHelper.navigateTo(context,  WelcomeScreen())),
          ),


          FadeInUp(
            duration: Duration(milliseconds: 700),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: AppStrings.doNotHaveAccount,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: AppStrings.signUp,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: AppColors.secondaryColor),
                    ),
                  ],
                ),
              ),
            ),
          ),

          FadeInUp(
              duration: Duration(milliseconds: 700),child: const LanguageSubTitle()),
        ],
      ),
    );
  }
}
