import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/model/expert_man.dart';
import 'package:tatware_task_oranos/presentation/pages/3_home_screen/bloc/home_cubit.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';
import '../../../../utilities/app_assets.dart';

class ExpertMemberItem extends StatelessWidget {
  const ExpertMemberItem({Key? key, required this.expertMember}) : super(key: key);
  final ExpertMember expertMember;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.all(8),clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: AppColors.inActiveCheckColor,blurRadius: 2)]
      ),
      width:MediaQuery.of(context).size.width* 0.45,height: MediaQuery.of(context).size.height*.20 ,
      child: Column(
        children: [
          Expanded(flex: 3,child: Image.asset(
            expertMember.image,
            width: double.infinity,
            fit: BoxFit.cover,
          )),
          Expanded(flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        AppAssets.star,
                        width: 15,
                        height: 15,
                      ),
                      Text(
                        ' (${expertMember.rating})',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: AppColors.lightGreyColor2),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: ()=>HomeCubit.get(context).isFavExpert(expertMember),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            AppAssets.heart,
                            width: 15,color:expertMember.isFav!? AppColors.redColor:null,
                            height: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    expertMember.name,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 14,
                      color: AppColors.greyColor,
                    ),
                  ),
                  Text(
                    expertMember.specialization,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.lightGreyColor2,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
