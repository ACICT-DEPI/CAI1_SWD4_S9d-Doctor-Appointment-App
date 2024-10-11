import 'package:doc_appointment/jana/lib/payment_method.dart';
import 'package:doc_appointment/jana/lib/widgets/appBar.dart';
import 'package:doc_appointment/mafdy_jana/profile/privacy_policy.dart';
import 'package:doc_appointment/mafdy_jana/profile/settings.dart';
import 'package:doc_appointment/mafdy_jana/profile/user_profile.dart';
import 'package:doc_appointment/mafdy_samuel/lib/login.dart';
import 'package:doc_appointment/mafdy_samuel/lib/onboardScreens.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Profile',
          onpressed: () {},
        ),
        body: ProfileBody(),
      
    );
  }
}

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Profile picture and name
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Stack(
                alignment:
                    Alignment.bottomRight, // Align the button at bottom-right
                children: [
                  // Circular profile image
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/images/doctor2.jpeg'), // Profile image here
                  ),

                  Positioned(
                    bottom: 0,
                    right: 0,
                    top: 75,
                    left: 75,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white, // White border
                            width: 3.0,
                          ),
                          color: Colors.blue),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 1, vertical: 0),
                        child: IconButton(
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 10,
                          ),
                          color: Colors.blue, // Icon color
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Esther Howard',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Divider(),

        // List of options
        ProfileOption(
          icon: Icons.person_outline,
          title: 'Your profile',
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => YourProfile()));
          },
        ),
        Divider(),
        ProfileOption(
          icon: Icons.credit_card_outlined,
          title: 'Payment Methods',
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PaymentScreen()));
          },
        ),
        Divider(),
        ProfileOption(
          icon: Icons.favorite_outline_outlined,
          title: 'Favourite',
          onTap: () {
            // Navigate to favorites
          },
        ),
        Divider(),
        ProfileOption(
          icon: Icons.settings_outlined,
          title: 'Settings',
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SettingsScreen()));
          },
        ),
        Divider(),
        ProfileOption(
          icon: Icons.help_outline_sharp,
          title: 'Help Center',
          onTap: () {},
        ),
        Divider(),
        ProfileOption(
          icon: Icons.privacy_tip_outlined,
          title: 'Privacy Policy',
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Privacy()));
          },
        ),
        Divider(),
        ProfileOption(
          icon: Icons.logout_rounded,
          title: 'Log out',
          onTap: () async {
            GoogleSignIn googleSignIn = GoogleSignIn();
            googleSignIn.disconnect();
            await FirebaseAuth.instance.signOut();
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
          },
        ),
      ],
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  ProfileOption({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Color(0xff0165fc),
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
      ),
      onTap: onTap,
      trailing: Icon(
        Icons.arrow_forward_ios_sharp,
        color: Color(0xff0165fc),
      ),
    );
  }
}
