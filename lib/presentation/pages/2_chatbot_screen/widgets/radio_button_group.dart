import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_task_oranos/presentation/pages/2_chatbot_screen/bloc/chatbot_cubit.dart';
import 'package:tatware_task_oranos/presentation/pages/2_chatbot_screen/bloc/chatbot_state.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';
import 'package:tatware_task_oranos/utilities/app_strings.dart';

import 'check_list_item.dart';

class RadioButtonGroup extends StatelessWidget {
   RadioButtonGroup({Key? key, this.selectionList= const {}}) : super(key: key);
   Map<String,bool> selectionList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:  MediaQuery.of(context).size.width* 0.15,
          vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<ChatBotCubit, ChatBotState>(builder: (context, state) {
            return ListView(
              primary: false,
              shrinkWrap: true,
              children: selectionList.entries
                  .map((e,) => CheckListItem(title: e.key, check: e.value)).toList(),
            );
          }),
          const SizedBox(
            height: 8,
          ),
          Text(
            AppStrings.sayDone,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.lightGreyColor2,
                  fontSize: 14,
                ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
