// ignore_for_file: must_be_immutable

import 'package:ugga/all.dart';


class BtmNavbar extends StatefulWidget {
  const BtmNavbar({
    Key? key,
  }) : super(key: key);

  @override
  State<BtmNavbar> createState() => _BtmNavbarState();
}

class _BtmNavbarState extends State<BtmNavbar> {
  int selectedindex = 0;

  List pages = [
    const  Dashboard(),
    const Employees(),
    const Applications(),
    const Settings(),
  ];

  void updatePage(int page) {
    setState(() {
      selectedindex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages [selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: sActiveColor,
        currentIndex: selectedindex,
        selectedItemColor: sActiveColor,
        unselectedItemColor: Colors.black,
        onTap: updatePage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 25,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_add,
              size: 25,
            ),
            label: "Applications",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                size: 25,
              ),
              label: "Employees"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 25,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
