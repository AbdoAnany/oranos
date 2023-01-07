import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_task_oranos/model/chat_message.dart';
import 'chatbot_state.dart';

class ChatBotCubit extends  Cubit<ChatBotState>{
  ChatBotCubit() : super(ChatBotInitialState());

  static ChatBotCubit get(context) => BlocProvider.of(context);
TextEditingController messageController=TextEditingController();
  static late Map<String,bool> checkMessagesList = {
    'Security':false,
    'Supply Chain':false,
    'Information Technology':false,
    'Human Resource':false,
    'Business Research':false,
};
  static ScrollController scrollController=ScrollController();
  static  List<ChatMessage> messages = [
    ChatMessage(text: 'Hi, Whats You Name Firstname?', isSent: false,),
    ChatMessage(text: 'Abdalla', isSent: true),
    ChatMessage(text: 'Ok, Abdalla Whats Your Lastname?', isSent: false),
    ChatMessage(text: 'Salah', isSent: true),
    ChatMessage(text: 'Mr Abdalla Salah, What\'s your Title? ', isSent: false),
    ChatMessage(text: 'Front-end Developer', isSent: true),
    ChatMessage(text: 'What Categories you will need expert In?', isSent: false,selectionList: checkMessagesList),
  ];
  multiCheck(key1){

    checkMessagesList[key1]=!checkMessagesList[key1]!;
    emit(ChatBotCheck());
  }
  check(key1){
    checkMessagesList.forEach((key, value) {
      if(key==key1) {
        checkMessagesList[key]=true;

      } else {
        checkMessagesList[key]=false;
      } });
    emit(ChatBotCheck());
  }

  addChatMassage() {
    if(messageController.text.isNotEmpty) {
      if(messageController.text.trim()=='done'){
        var keys='';
        messages.last.selectionList!.forEach((key, value) {
          if(value){

            keys+=  keys.isEmpty?'- $key':'\n- $key';

          }
        });
        ChatMessage mess=  ChatMessage(text:keys, isSent: true);
        messages.add( mess ,);
      }else{
        ChatMessage mess=  ChatMessage(text: messageController.text, isSent: true);

        messages.add( mess ,);
      }

      emit(ChatBotCheck());
      Future.delayed(Duration(milliseconds: 200),(){
        scrollController.jumpTo(scrollController.position.maxScrollExtent);

      });
      messageController.clear();
    }
    else{


        var keys='';
        messages.last.selectionList!.forEach((key, value) {
          if(value){

            keys+=  keys.isEmpty?'- $key':'\n- $key';

          }
        });
        if(keys.isNotEmpty) {
          ChatMessage mess = ChatMessage(text: keys, isSent: true);
          messages.add(mess,);
          emit(ChatBotCheck());
          Future.delayed(Duration(milliseconds: 200),(){
            scrollController.jumpTo(scrollController.position.maxScrollExtent);

          });


        }

    }
    }


}
