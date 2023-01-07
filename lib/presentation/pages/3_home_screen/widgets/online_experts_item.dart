import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';

class OnlineExpertItem extends StatelessWidget {
  const OnlineExpertItem({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: const [
              SizedBox(
                  width: 59,
                  height:59,
                  child: CircleAvatar(
                    backgroundColor: AppColors.circularAvatarColor,
                  )),
              Icon(
                Icons.circle,
                size: 11,
                color: AppColors.greenColor,
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.lightGreyColor2,
            ),
          ),
        ],
      ),
    );
  }
}
