import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/model/chat_message.dart';
import 'package:tatware_task_oranos/presentation/pages/2_chatbot_screen/widgets/radio_button_group.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';

import '../../../../utilities/app_assets.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key, required this.chatMessage}) : super(key: key);
  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              if (chatMessage.isSent)
                const SizedBox(
                  width: 50,
                ),
              if (!chatMessage.isSent) ...[
                SizedBox(
                  width: 38,
                  height: 38,
                  child: CircleAvatar(
                    backgroundColor: AppColors.lightGreyColor,
                    child: Center(
                      child: Image.asset(
                        AppAssets.chatBubble,
                        color: AppColors.primaryColor,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
              ],
              Expanded(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight:48.0,
                  ),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: (chatMessage.isSent)
                          ? AppColors.primaryColor
                          : AppColors.lightGreyColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(
                       8,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        heightFactor: 1,
                        child: Text(
                          chatMessage.text,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 14,
                              color: (chatMessage.isSent)
                                  ? AppColors.whiteColor
                                  : AppColors.blackColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (!chatMessage.isSent)
                const SizedBox(
                  width: 50,
                ),
              if (chatMessage.isSent)
                SizedBox(
                  width: 38,
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Image.asset(
                      AppAssets.messageSeen,
                      width: 22,
                      height: 9,
                    ),
                  ),
                ),
            ],
          ),
          if(chatMessage.selectionList!.isNotEmpty)
           RadioButtonGroup(selectionList:chatMessage.selectionList!),
        ],
      ),
    );
  }
}
