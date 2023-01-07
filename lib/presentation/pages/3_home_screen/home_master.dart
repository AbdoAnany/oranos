import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware_task_oranos/presentation/pages/3_home_screen/bloc/home_cubit.dart';
import 'package:tatware_task_oranos/presentation/pages/3_home_screen/bloc/home_state.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
class HomeMaster extends StatelessWidget {
  const HomeMaster({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
        builder: (context,s) {
          HomeCubit homeCubit=HomeCubit.get(context);
          return PersistentTabView(
            context,
            bottomScreenMargin: 0,
            controller: homeCubit.controller,
            screens: homeCubit.buildScreens(),
            items:List.generate(homeCubit.barItemList.length, (index) =>  PersistentBottomNavBarItem(
              icon: Image.asset(
                homeCubit.barItemList[index],
                width: 20,
                height: 20,
                color: AppColors.blackColor,
              ),
            )),
            onItemSelected:homeCubit.onItemSelected,
            backgroundColor: AppColors.whiteColor,
            popActionScreens: PopActionScreensType.all,
            screenTransitionAnimation: const ScreenTransitionAnimation(
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds:200),
            ),);
        }
    );
  }
}
