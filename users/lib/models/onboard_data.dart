class OnBoarding {
  final String title;
  final String image;

  OnBoarding({
    required this.title,
    required this.image,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Welcome to \n ALNAJDA',
    image: 'assets/images/firstpic.png',
  ),
  OnBoarding(
    title: "Improve troubleshooting operation",
    image: 'assets/images/secondpic.png',
  ),
  OnBoarding(
    title: 'Save your time',
    image: 'assets/images/thirdpic.png',
  ),
  OnBoarding(
    title: 'Join a supportive community',
    image: 'assets/images/fourthpic.png',
  ),
];
