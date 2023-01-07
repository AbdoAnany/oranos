import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/presentation/pages/3_home_screen/bloc/home_cubit.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';
import 'package:tatware_task_oranos/utilities/app_strings.dart';

import 'online_experts_item.dart';

class OnlineExpertsWidget extends StatelessWidget {
  const OnlineExpertsWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.onlineExperts,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
            ),
            Icon(
              Icons.more_horiz,
              color: AppColors.greyColor.withOpacity(.7),
            )
          ],
        ),
        const SizedBox(
          height:16,
        ),
        SizedBox(
          height:  120.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,

            itemBuilder: (context, index) => OnlineExpertItem(
              name: HomeCubit.names[index],
            ),
            itemCount: HomeCubit.names.length,
          ),
        ),
      ],
    );
  }
}

