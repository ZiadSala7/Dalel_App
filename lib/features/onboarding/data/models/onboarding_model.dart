import 'package:dalel_app/core/utils/app_images.dart';

class OnboardingModel {
  final String image;
  final String mainText;
  final String subText;
  final bool isLast;

  OnboardingModel({
    required this.image,
    required this.mainText,
    required this.subText,
    this.isLast = false,
  });
}

List<OnboardingModel> onboarding = [
  OnboardingModel(
    image: AppImages.onboarding1,
    mainText: 'Explore The history with \nDalel in a smart way',
    subText:
        'Using our app’s history libraries \nyou can find many historical periods ',
  ),
  OnboardingModel(
    image: AppImages.onboarding2,
    mainText: 'From every place \non earth',
    subText: 'A big variety of ancient places \nfrom all over the world',
  ),
  OnboardingModel(
    image: AppImages.onboarding3,
    mainText: 'Using modern AI technology \nfor better user experience',
    subText:
        'AI provide recommendations and helps \nyou to continue the search journey',
    isLast: true,
  ),
];
