import 'package:flutter/material.dart';
import 'package:tatware_task_oranos/utilities/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 53.0,
      child: ElevatedButton(onPressed: onPressed,
          style:  ButtonStyle(backgroundColor:MaterialStateProperty.all(AppColors.secondaryColor) ),
          child: Text(text,style: TextStyle(fontFamily: 'Poppins',color: AppColors.whiteColor,fontSize: 18),)),
    );
  }
}
