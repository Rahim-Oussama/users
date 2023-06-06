import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:users/global/global.dart';
import 'package:users/models/trips_history_model.dart';
import 'package:users/screens/profile_screen.dart';
import 'package:users/screens/trips_history_screen.dart';
import 'package:users/splashScreen/splash_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      child: Drawer(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 0, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 129, 132, 133),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    userModelCurrentInfo!.name!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => ProfileScreen()));
                    },
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color(0xFFFC9D45),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (c) => TripsHistoryScreen()));
                      },
                      child: Text(
                        "Your Trips",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  // Text(
                  //   "Payment",
                  //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  // ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  // Text(
                  //   "Notifications",
                  //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  // ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  // Text(
                  //   "Promos",
                  //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  // ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  // Text(
                  //   "Help",
                  //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  // ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  // Text(
                  //   "Free Trips",
                  //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  // ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, left: 10),
                child: GestureDetector(
                  onTap: () {
                    firebaseAuth.signOut();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => SplashScreen()));
                  },
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
