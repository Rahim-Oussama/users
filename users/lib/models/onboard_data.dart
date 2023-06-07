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
    image: 'images/firstpic.png',
  ),
  OnBoarding(
    title: "Improve troubleshooting operation",
    image: 'images/secondpic.png',
  ),
  OnBoarding(
    title: 'Save your time',
    image: 'images/thirdpic.png',
  ),
  OnBoarding(
    title: 'Join a supportive community',
    image: 'images/fourthpic.png',
  ),
];
