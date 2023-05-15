import 'package:ugga/all.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController name  = TextEditingController();

  final TextEditingController email = TextEditingController();

  final TextEditingController password1 = TextEditingController();

  final TextEditingController password2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create Account",
              style: TextStyle(
                  color: sActiveColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: defaultPadding,),
            Padding(
            padding: const EdgeInsets.only(bottom:0),
            child: Center(
              child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('assets/logo1.png'),
                    fit: BoxFit.cover),
              ),
              ),
            ),
          ),
            const Spacer(),
            const SizedBox(height: defaultPadding),
            TxtField(hint: "Name ", 
            prefixIcon: Icons.person,
            inputType: TextInputType.name, controllername: name, 
            //prefixIcon: Icons.person,
            ),
            TxtField(
              hint: "Email",
              prefixIcon: Icons.email,
              inputType: TextInputType.emailAddress, controllername: email,
              //prefixIcon:Icons.email,
            ),
            TxtField(
              hint: "Password",
              inputType: TextInputType.visiblePassword,
              prefixIcon: Icons.lock, controllername: password1,
              //prefixIcon:Icons.password,
            ),
            TxtField(
                hint: "Re-enter password",
               // prefixIcon:Icons.password,
                inputType: TextInputType.visiblePassword, 
                prefixIcon: Icons.lock, controllername: password2,),
            const SizedBox(height: defaultPadding),
            TxtButton(bname: "Sign Up", pressFunction: () {
                      
                    },),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Already have account?",
                    style: TextStyle(color: Colors.black, fontSize: 14)),
              ],
            ),
            
            const SizedBox(
              height: defaultPadding / 2,
            ),

          const CtxtButton(bname: "Sign in"),
          const SizedBox(height: defaultPadding,) 
          ],
        ),
      ),
    );
  }
}