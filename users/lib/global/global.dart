import 'package:firebase_auth/firebase_auth.dart';
import 'package:users/models/direction_details_info.dart';

import '../models/user_model.dart';

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
User? currentUser;

UserModel? userModelCurrentInfo;

String cloudMessagingServerToken =
    "key=AAAAUOewoZ4:APA91bFGs-zthiqRuahZLjIyWo_HqkQG9hRlTiOA5w1NAVsN1wqwybYu9JF2wj2a4Hoix7iouk3XiJgEuNqeZQ80ZU6btFYgQMyEuAYubw0RI40Vzo56YKvuxhcAQ1qyJfyAzY10t_cC";
List driversList = [];
DirectionDetailsInfo? tripDirectionDetailsInfo;
String userDropOffAddress = "";
String driverCarDetails = "";
String driverName = "";
String driverPhone = "";
String driverRatings = "";

double countRatingStars = 0.0;
String titleStarsRating = "";
