import 'package:ugga/all.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(
                left: defaultPadding, right: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Center(
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.center,
                            image: AssetImage('assets/logo1.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "Unique Global Genuine Agency",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: sAccentColor,
                      fontSize: 24,
                    ),
                  ),
                ),
                const Spacer(),
                TxtButton(
                  bname: "Login",
                  pressFunction: () {
                    Get.to(const Login());
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TxtButton(
                  bname: "SignUp",
                  pressFunction: () {
                    Get.to(const SignUpScreen());
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ));
  }
}
