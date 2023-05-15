import 'package:ugga/all.dart';

class FpwdScreen extends StatefulWidget {
  const FpwdScreen({super.key});

  @override
  State<FpwdScreen> createState() => _FpwdScreenState();
}

class _FpwdScreenState extends State<FpwdScreen> {
  final TextEditingController email = TextEditingController();
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left:16.0,right:16),
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: sActiveColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
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
                const Padding(
                  padding: EdgeInsets.only(left:16.0,right:16.0),
                  child: Text(
                    "Enter Your Email to Recieve Instructions  how to reset oyur password",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
                const Spacer(),
                
                const SizedBox(
                  height: defaultPadding / 2,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.all(16.0),
          child:  TxtButton(
                    bname: 'Send Email',
                    pressFunction: () {
                      
                    },
                  ),
        ),
        );
  }
}
