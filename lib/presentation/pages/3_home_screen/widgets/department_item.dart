import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/model/job.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';
import 'package:tatware_task_oranos/utilities/app_strings.dart';

class DepartmentItem extends StatelessWidget {
  const DepartmentItem({Key? key, required this.job}) : super(key: key);

  final Department job;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          job.image,
          width:38,
        ),
        title: Text(job.title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: 14)),
        subtitle: Text(
          AppStrings.getExpertCount(job.numberOfExperts),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.greyColor, fontSize: 14),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
      ),
    );
  }
}
