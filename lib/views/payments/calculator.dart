// ignore_for_file: file_names, unused_local_variable


import 'package:ugga/all.dart';


class CalcScreen extends StatefulWidget {
  const CalcScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  final TextEditingController commisionamount = TextEditingController();

  final TextEditingController residentpermitamount = TextEditingController();

  final TextEditingController visafeeamount = TextEditingController();

  final TextEditingController fullname = TextEditingController();

  final TextEditingController date = TextEditingController();

  final TextEditingController referalamount = TextEditingController();

  final TextEditingController flightamount = TextEditingController();

  final TextEditingController paidamount = TextEditingController();

  int? profits = 0,
      commisionpaid = 0,
      residentpermit = 0,
      visafee = 0,
      flight = 0,
      refferalpay = 0;

  void _profit() {
    setState(() {
      commisionpaid = int.parse(commisionamount.text);
      residentpermit = int.parse(residentpermitamount.text);
      visafee = int.parse(visafeeamount.text);
      refferalpay = int.parse(referalamount.text);
      flight = int.parse(flightamount.text);

      profits = commisionpaid! -
          (residentpermit! + visafee! + refferalpay! + flight!);
    });
  }


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
                "Payments",
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
                  
                  sufixIcon:Icons.search
                  ),
              PaymentTxtField(
                hint: "Date",
                controllername: date,
                inputType: TextInputType.datetime,
                sufixIcon:Icons.date_range
              ),
              PaymentTxtField(
                  hint: "Commission paid",
                  controllername: commisionamount,
                  inputType: TextInputType.number, ),
              PaymentTxtField(
                hint: "Refferal Pay",
                inputType: TextInputType.number,
                controllername: referalamount, 
              ),
              PaymentTxtField(
                hint: "Resident Permit",
                controllername: residentpermitamount,
                inputType: TextInputType.number, 
              ),
              PaymentTxtField(
                  hint: "Visa fee",
                  controllername: visafeeamount,
                  inputType: TextInputType.number, ),
              PaymentTxtField(
                  hint: "Flight",
                  controllername: flightamount,
                  inputType: TextInputType.number, ),
              const SizedBox(height: 16),
              Text(
                "Total:$profits",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
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
                  onPressed: _profit,
                  child: const Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 16 / 2,
              ),
              
              const SizedBox(
                height: 12,
              ),
              
              const CtxtButton(bname: "View Employees")
            ],
          ),
        ),
      ),
    );
  }
}
