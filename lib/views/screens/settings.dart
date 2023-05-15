import 'package:firebase_auth/firebase_auth.dart';
import 'package:ugga/all.dart';


class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
int selectedindex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center (child:Text("Profile",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: defaultPadding,
          ),
          const Profpic(),
          const SizedBox(
            height: defaultPadding * 3,
          ),
          ProfileButton(
            iconname: Icons.person,
            pname: "My Account",
            press: () {},
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          ProfileButton(
            pname: "Notifications",
            iconname: Icons.notifications,
            press: () {},
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          ProfileButton(
            pname: "Settings",
            iconname: Icons.settings,
            press: () {},
          ),
          
          const SizedBox(
            height: defaultPadding,
          ),
          ProfileButton(
            pname: "HelpCenter",
            iconname: Icons.help,
            press: () {},
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          ProfileButton(
            pname: "Log Out",
            iconname: Icons.logout,
            press: () =>FirebaseAuth.instance.signOut(),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
        ],
      ),
    );
  }
}
