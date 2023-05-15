import 'package:ugga/all.dart';

class TxtButton extends StatelessWidget {
  const TxtButton({
    Key? key,
    required this.bname,
    required this.pressFunction,
  }) : super(key: key);
  final String bname;
  final void Function() pressFunction;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: sActiveColor),
      child: TextButton(
          child: Text(
            bname,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            pressFunction;
            // if (bname == "Log in") {
            //   Get.to(const BtmNavbar());
            // } else if (bname == "Sign up") {
            //   Get.to(const SignUpScreen());
            // }
            // else if (bname == "Login") {
            //   Get.to(const Login());
            // }
            // else if (bname == "Create Task") {
            //   Get.to(const Tasks());
            // }
            // else if (bname == "SignUp") {
            //   Get.to(const SignUpScreen());
            // }
            //  else if (bname == "Forgot Password?") {
            //   Get.to(const FpwdScreen());
            // } else if (bname == "See all") {
            // } else if (bname == "Reset Password") {
            // } else if (bname == "Sign in") {
            //   Get.to(const Login());
            // }
          }),
    );
  }
}

class CtxtButton extends StatelessWidget {
  const CtxtButton({
    Key? key,
    required this.bname,
  }) : super(key: key);
  final String bname;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: sActiveColor),
          color: Colors.white),
      child: TextButton(
          child: Text(
            bname,
            style: const TextStyle(
                color: sActiveColor, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            if (bname == "Log in") {
              Get.to(const BtmNavbar());
            } else if (bname == "Sign up") {
              Get.to(const SignUpScreen());
            } else if (bname == "Login") {
              Get.to(const Login());
            } else if (bname == "Create Account") {
              Get.to(const SignUpScreen());
            } else if (bname == "SignUp") {
              Get.to(const SignUpScreen());
            } else if (bname == "Forgot Password?") {
              Get.to(const FpwdScreen());
            } else if (bname == "See all") {
            } else if (bname == "Reset Password") {
            } else if (bname == "Sign in") {
              Get.to(const Login());
            }
          }),
    );
  }
}

class FtxtButton extends StatelessWidget {
  const FtxtButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blueAccent,
      ),
      child: TextButton(
          onPressed: () {},
          child: const Text("CONNECT WITH FACEBOOK",
              style: TextStyle(color: Colors.white, fontSize: 16))),
    );
  }
}

class GtxtButton extends StatelessWidget {
  const GtxtButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.redAccent,
          border: const Border()),
      child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              // Icon(Icons.account_circle, color: sActiveColor,),
              Text("Login with Google",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          )),
    );
  }
}

class OrderButton extends StatefulWidget {
  const OrderButton({
    Key? key,
    required this.title1,
    required this.title2,
  }) : super(key: key);
  final String title1;
  final String title2;

  @override
  State<OrderButton> createState() => _OrderButtonState();
}

class _OrderButtonState extends State<OrderButton> {
  bool view = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left: 0, right: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: view == false ? sActiveColor : Colors.black12,
      ),
      child: TextButton(
          onPressed: () {
            setState(() {
              view = !view;
            });
          },
          child: Text(view == false ? widget.title1 : widget.title2,
              style: TextStyle(
                  color: view == false ? Colors.white : Colors.black38,
                  fontSize: 16))),
    );
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key? key,
    required this.pname,
    required this.iconname,
    required this.press,
  }) : super(key: key);
  final String pname;
  final IconData iconname;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.blue[10]),
          child: TextButton(
            onPressed: press,
            child: Row(
              children: [
                Icon(
                  iconname,
                  color: Colors.black,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Text(
                    pname,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, color: Colors.black),
              ],
            ),
          ),
        ));
  }
}

class Profpic extends StatelessWidget {
  const Profpic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: const [
          CircleAvatar(
              backgroundColor: sAccentColor,
              backgroundImage: AssetImage("assets/logo.png")),
        ],
      ),
    );
  }
}

class StatusButton extends StatefulWidget {
  const StatusButton({
    Key? key,
    required this.title1,
    required this.title2,
    required this.status,
  }) : super(key: key);
  final String title1;
  final String title2;
  final bool status;

  @override
  State<StatusButton> createState() => _StatusButtonState();
}

class _StatusButtonState extends State<StatusButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 16,
        width: 60,
        padding: const EdgeInsets.only(left: 0, right: 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: widget.status == false ? Colors.orange : Colors.green,
        ),
        child: Center(
          child: Text(widget.status == false ? widget.title1 : widget.title2,
              style: TextStyle(
                  color: widget.status == false ? Colors.white : Colors.white,
                  fontSize: 12)),
        ));
  }
}
