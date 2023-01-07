import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/presentation/pages/2_chatbot_screen/bloc/chatbot_cubit.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';

class CheckListItem extends StatelessWidget {
   const CheckListItem({Key? key, this.title, this.check}) : super(key: key);
   final title;
   final check;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
          onTap: () =>ChatBotCubit.get(context).multiCheck(title),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                check
                    ? const Icon(
                  Icons.check_circle,
                  color: AppColors.primaryColor,
                )
                    : const Icon(
                  Icons.circle,
                  color: AppColors.inActiveCheckColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                   title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        );

  }
}


