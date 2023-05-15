import 'package:firebase_auth/firebase_auth.dart';
import 'package:ugga/all.dart';
import 'package:ugga/main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email = TextEditingController();

  final password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();

    super.dispose();
  }

  Future signIn() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text.trim(), password: password.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return const Center(child: Text("Something went wrong"));
              } else if (snapshot.hasData) {
                return const Dashboard();
              } else {
                return LoginWidgets(email: email, password: password);
              }
            }));
  }
}

class LoginWidgets extends StatelessWidget {
  const LoginWidgets({
    super.key,
    required this.email,
    required this.password,
  });

  final TextEditingController email;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            const Text(
              'Welcome Back',
              style: TextStyle(
                color: sActiveColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
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
            TxtField(
              hint: "Email",
              prefixIcon: Icons.mail,
              inputType: TextInputType.emailAddress,
              controllername: email,
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            TxtField(
              hint: "Password",
              prefixIcon: Icons.lock,
              inputType: TextInputType.visiblePassword,
              controllername: password,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.to(const FpwdScreen());
                  },
                  child: const Text("Forgot Password ?",
                      style: TextStyle(
                        color: sActiveColor,
                      )),
                ),
              ],
            ),
            TxtButton(
              bname: 'Log in',
              pressFunction: () {},
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Or",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
              ],
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            const CtxtButton(bname: "Create Account"),
            const SizedBox(
              height: defaultPadding,
            )
          ],
        ),
      ),
    );
  }
}
