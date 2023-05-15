import 'package:ugga/all.dart';


class CreateEmployee extends StatefulWidget {
  const CreateEmployee({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateEmployee> createState() => _CreateEmployeeState();
}

class _CreateEmployeeState extends State<CreateEmployee> {
  final TextEditingController fullname = TextEditingController();

  final TextEditingController passportNo = TextEditingController();

  final TextEditingController idNumber = TextEditingController();

  final TextEditingController phoneNumber = TextEditingController();

  final TextEditingController date = TextEditingController();

  final TextEditingController jobType = TextEditingController();

  final TextEditingController refferalCode = TextEditingController();


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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Register Employee",
                style: TextStyle(
                    color: sActiveColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              PaymentTxtField(
                  hint: "Full Name ",
                  controllername: fullname,
                  inputType: TextInputType.name, 
                  ),
              PaymentTxtField(
                hint: "Date",
                controllername: date,
                inputType: TextInputType.datetime,
                sufixIcon:Icons.date_range
              ),
              PaymentTxtField(
                  hint: "Passport Number",
                  controllername: passportNo,
                  inputType: TextInputType.text, ),
              PaymentTxtField(
                hint: "Id Number",
                inputType: TextInputType.number,
                controllername: idNumber, 
              ),
              PaymentTxtField(
                hint: "Phone Number",
                controllername: phoneNumber,
                inputType: TextInputType.phone, 
              ),
              PaymentTxtField(
                  hint: "Job Type",
                  controllername: jobType,
                  inputType: TextInputType.text, ),
              
                const SizedBox(
                height: 16 / 2,
              ),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:sActiveColor),
                child: TextButton(
                  onPressed: (){Get.to(const UploadDocuments());},
                  child: const Text(
                    "Next",
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
