import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/presentation/pages/2_chatbot_screen/chatbot_screen.dart';
import 'package:tatware_task_oranos/presentation/widgets/primary_button.dart';
import 'package:tatware_task_oranos/utilities/app_strings.dart';
import 'package:tatware_task_oranos/presentation/widgets/language_sub_title.dart';

import '../../../utilities/app_assets.dart';
import '../../../utilities/app_helper.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
        FadeInUp(
          duration: Duration(milliseconds: 500),

              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Transform.translate(
                    offset: const Offset(30, 0),
                    child: Image.asset(
                      AppAssets.getStartPathImage,
                      width:  236.0,
                      height: 256.0,
                    ),
                  ),
                  SizedBox(
                    width:  236.0,
                    height: 200.0,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: AppStrings.getStartPageText1,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          TextSpan(
                            text: AppStrings.getStartPageText2,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: AppStrings.getStartPageText3,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            FadeInUp(
              duration: Duration(milliseconds: 500),
              child: Transform.translate(
                offset: const Offset(-15,0),
                child: Image.asset(
                  AppAssets.getStartImage,
                  width:  241.0,
                  height: 300,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            FadeInUp(
              duration: Duration(milliseconds: 700),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal:   MediaQuery.of(context).size.width * 0.25),

                child: PrimaryButton(
                  text: AppStrings.next,
                  onPressed: () => AppHelper.navigateTo(context, const ChatBotScreen())),

              ),
            ),
            const SizedBox(
              height: 50,
            ),
            FadeInUp(
                duration: Duration(milliseconds: 700),child: const LanguageSubTitle()),
          ],
        ),
      ),
    );
  }
}
