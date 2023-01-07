import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/presentation/pages/2_chatbot_screen/bloc/chatbot_cubit.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';
import 'package:tatware_task_oranos/utilities/app_strings.dart';
import '../../../../utilities/app_assets.dart';

class ChatBotTextFiled extends StatelessWidget {
  const ChatBotTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,width: MediaQuery.of(context).size.width*.8,
              margin:  const EdgeInsets.symmetric(horizontal: 0),
              child: TextFormField(
                decoration:InputDecoration(

                  hintText:  AppStrings.typeSomething,
                  hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.lightGreyColor2, fontSize: 14),
                  fillColor: AppColors.secondaryColor.withOpacity(.02),filled: true,alignLabelWithHint: true,
                  border: OutlineInputBorder( borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none ),
                  prefixIcon:const Icon(Icons.language, size: 20, color: AppColors.lightGreyColor2,),
                  suffixIcon:  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(AppAssets.mic,),
                  ),
                ) ,controller:  ChatBotCubit.get(context).messageController,

              ),
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          InkWell(
            onTap: () => ChatBotCubit.get(context).addChatMassage(),
            child: Image.asset(AppAssets.send, width: 20, height: 20,),
          )
        ],
      ),
    );
  }
}
