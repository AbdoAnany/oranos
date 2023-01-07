import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/presentation/pages/3_home_screen/bloc/home_cubit.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';

import 'department_item.dart';

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.75,
      builder: (context, controller) => DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ListView.builder(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8, vertical: 16),
              controller: controller,
              itemBuilder: (context, index) =>
                  DepartmentItem(job: HomeCubit.departments[index]),

              itemCount: HomeCubit.departments.length,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8, bottom:16),
              child: SizedBox(
                width: 36.0,
                height: 5.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: AppColors.scrollableSheetIndicatorColor,
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

