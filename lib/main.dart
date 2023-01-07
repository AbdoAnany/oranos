import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_task_oranos/presentation/pages/0_start_screen/start_screen.dart';
import 'package:tatware_task_oranos/presentation/pages/2_chatbot_screen/bloc/chatbot_cubit.dart';
import 'package:tatware_task_oranos/presentation/pages/3_home_screen/bloc/home_cubit.dart';
import 'package:tatware_task_oranos/utilities/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [

    BlocProvider(create: (context) => ChatBotCubit()),
          BlocProvider(create: (context) => HomeCubit()),

    ],
    child:  MaterialApp(
      title: 'Interview Assignment',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appThemeLight,
      home:const GetStartedScreen() ,
    ));
  }
}
