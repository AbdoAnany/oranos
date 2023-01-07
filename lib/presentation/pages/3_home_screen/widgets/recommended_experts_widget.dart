import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_task_oranos/presentation/pages/3_home_screen/bloc/home_cubit.dart';
import 'package:tatware_task_oranos/presentation/pages/3_home_screen/bloc/home_state.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';
import 'package:tatware_task_oranos/utilities/app_strings.dart';

import 'expert_member_item.dart';

class RecommendedExpertsWidget extends StatelessWidget {
  const RecommendedExpertsWidget({Key? key, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.recommendedExperts,
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
        SizedBox(height: MediaQuery.of(context).size.height*.25,width: MediaQuery.of(context).size.width,
          child: BlocBuilder<HomeCubit,HomeState>(
            builder: (context,s) {
              return ListView.builder(
                primary: false,
                shrinkWrap: true,scrollDirection: Axis.horizontal,

                itemBuilder: (context, index) =>
                    ExpertMemberItem(expertMember:  HomeCubit.experts[index]),
                itemCount:  HomeCubit.experts.length,
              );
            }
          ),
        ),
      ],
    );
  }
}

