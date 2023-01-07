import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';
import 'package:tatware_task_oranos/utilities/app_strings.dart';

class LanguageSubTitle extends StatelessWidget {
  const LanguageSubTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.language,
          color: AppColors.blackColor,
          size:20,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          AppStrings.english,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
