import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:tatware_task_oranos/model/expert_man.dart';
import 'package:tatware_task_oranos/model/job.dart';
import 'package:tatware_task_oranos/presentation/pages/3_home_screen/pages/home_screen.dart';
import '../../../../utilities/app_assets.dart';
import 'home_state.dart';

class HomeCubit extends  Cubit<HomeState>{
  HomeCubit() : super(HomeInitialState());

   onItemSelected(index) {
          currentIndex =index;
          emit(HomeCurrentIndex());
  }

  static HomeCubit get(context) => BlocProvider.of(context);
  late PersistentTabController controller=PersistentTabController(initialIndex: 0);
  int currentIndex = 0;
 isFavExpert(expertMember){
  experts.firstWhere((element) => element.id==expertMember.id).isFav=!
  experts.firstWhere((element) => element.id==expertMember.id).isFav!;
  emit(HomeFav());

}
  List<Widget> buildScreens() {
    return  [
      HomeScreen(),
      Center(child: Image.asset( AppAssets.favIcon)),
      Center(child: Image.asset( AppAssets.walletIcon)),
      Center(child: Image.asset( AppAssets.profileIcon)),
    ];
  }
  List barItemList=[
    AppAssets.homeIcon,
    AppAssets.favIcon,
    AppAssets.walletIcon,
    AppAssets.profileIcon,
  ];
  static List<Department> departments = const [
    Department(
        title: 'Information Technology',
        image: AppAssets.informationTechnology,
        numberOfExperts: 23),
    Department(title: 'Supply Chain', image:  AppAssets.supplyChain, numberOfExperts: 12),
    Department(title: 'Security', image:  AppAssets.security, numberOfExperts: 14),
    Department(title: 'Human Resource', image:  AppAssets.humanResource, numberOfExperts: 8),
    Department(title: 'Immigration', image: AppAssets. immigration, numberOfExperts: 18),
    Department(title: 'Translation', image:  AppAssets.translation, numberOfExperts: 3),
  ];
  static List<String> checkMessagesList = [
    'Security',
    'Supply Chain',
    'Information Technology',
    'Human Resource',
    'Business Research'
  ];

  static List<ExpertMember> experts =  [
    ExpertMember(
      id:1,
        name: 'Karim Adel',
        specialization: 'Supply Chain',
        image: AppAssets.profile1,
        isFav: false,
        rating: 5.0),
    ExpertMember(      id:2,

        name: 'Merna Adel',
        specialization: 'Supply Chain',
        image:  AppAssets.profile2,  isFav: false,
        rating: 4.9),
  ];

  static List<String> names = ['Lance', 'Niles', 'Samuel', 'Hilary', 'Hanson','Lance', 'Niles', 'Samuel', 'Hilary', 'Hanson'];


}
