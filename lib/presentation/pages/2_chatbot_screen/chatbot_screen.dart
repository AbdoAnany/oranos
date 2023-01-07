import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_task_oranos/presentation/pages/2_chatbot_screen/bloc/chatbot_cubit.dart';
import 'package:tatware_task_oranos/presentation/pages/2_chatbot_screen/widgets/chat_text_filed.dart';
import 'package:tatware_task_oranos/presentation/pages/2_chatbot_screen/widgets/chat_item.dart';
import 'package:tatware_task_oranos/presentation/pages/3_home_screen/home_master.dart';
import 'package:tatware_task_oranos/presentation/widgets/oranos_logo.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';
import '../../../utilities/app_assets.dart';
import '../../../utilities/app_helper.dart';
import 'bloc/chatbot_state.dart';

class ChatBotScreen extends StatelessWidget {
  const ChatBotScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leadingWidth: 40,

        title:  const OranosLogo(size: 20),
        actions: [
          InkWell(
            onTap:  () =>AppHelper.navigateTo(context, const HomeMaster()),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                AppAssets.homeIcon,
                width: 20,
                height: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child:   BlocBuilder<ChatBotCubit, ChatBotState>(builder: (context, state) {
                return ListView.builder(
                      padding: const EdgeInsets.all(16),controller: ChatBotCubit.scrollController,
                      physics: const BouncingScrollPhysics(),addAutomaticKeepAlives: true,shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          ChatItem(chatMessage: ChatBotCubit.messages[index]),

                      itemCount: ChatBotCubit.messages.length);
                }
              ),
            ),

            Divider(
              height: 8,
              thickness: 0.5,
              color: AppColors.greyColor.withOpacity(0.5),
            ),
            const ChatBotTextFiled()
          ],
        ),
      ),
    );
  }
}
