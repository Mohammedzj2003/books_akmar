import 'package:book_akmar/shared/onboarding_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


var decorationTextFiled = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(
      color: Colors.blue,
      width: 0.5,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(
      color: Colors.green,
      width: 2,
    ),
  ),
  filled: true,
  fillColor: Colors.white,
);


//Setting
class SettingOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget trailing;
  final Color textColor;
  final Color iconColor;
  final Color iconBackgroundColor;
  final VoidCallback onTap;


  SettingOption({
    required this.icon,
    required this.title,
    required this.trailing,
    required this.textColor,
    required this.iconColor,
    required this.iconBackgroundColor, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height:35 ,
        width: 35,
        decoration: BoxDecoration(
          color: iconBackgroundColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: Color(0xf3f3f3) ),
        ),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(title, style: TextStyle(color: textColor)),
      trailing: trailing,
      onTap: onTap,
    );
  }
}

class OnboardingData {
  final BuildContext context;

  OnboardingData(this.context);

  List<OnboardingInfo> get items => [
    OnboardingInfo(
        title: AppLocalizations.of(context)!.onboardingTitle1,
        description: AppLocalizations.of(context)!.onboardingDes1,
        image: "images/quality.svg"),
    OnboardingInfo(
        title: AppLocalizations.of(context)!.onboardingTitle2,
        description: AppLocalizations.of(context)!.onboardingDes2,
        image: "images/delevery.svg"),
    OnboardingInfo(
        title: AppLocalizations.of(context)!.onboardingTitle3,
        description: AppLocalizations.of(context)!.onboardingDes3,
        image: "images/reward.svg"),
  ];
}



// class UnbordingContent {
//   String image;
//   String title;
//   String discription;
//
//   UnbordingContent({required this.image, required this.title, required this.discription});
//
// }
//
// List<UnbordingContent> contents = [
//   UnbordingContent(
//       title: 'Didactic games',
//       image: 'images/quality.svg',
//       discription: "When it comes to learning,"
//           "there’s no better way to do it"
//           "than playing"
//   ),
//   UnbordingContent(
//       title: 'Fast Delevery',
//       image: 'images/delevery.svg',
//       discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
//           "industry's standard dummy text ever since the 1500s, "
//           "when an unknown printer took a galley of type and scrambled it "
//   ),
//   UnbordingContent(
//       title: 'Reward surprises',
//       image: 'images/reward.svg',
//       discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
//           "industry's standard dummy text ever since the 1500s, "
//           "when an unknown printer took a galley of type and scrambled it "
//   ),
// ];
