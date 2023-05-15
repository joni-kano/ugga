// ignore_for_file: file_names
import 'package:ugga/all.dart';

class TxtField extends StatelessWidget {
  const TxtField({
    Key? key,
    required this.hint,
    required this.inputType,
    required this.prefixIcon,
    required TextEditingController controllername,
  }) : super(key: key);

  final String hint;
  final TextInputType inputType;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white24,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 30, // adjust this value as needed
            child: Icon(prefixIcon),
          ),
          Expanded(
            child: TextField(
              keyboardType: inputType,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(
                  color: sActiveColor,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class PaymentTxtField extends StatelessWidget {
PaymentTxtField({
    Key? key,
    required this.hint,
    required this.inputType,
    
    required TextEditingController controllername, 
    this.sufixIcon,
  }) : super(key: key);

  final String hint;
  final TextInputType inputType;
  
  late IconData? sufixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: defaultPadding ,right:defaultPadding,bottom: defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white24,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              keyboardType: inputType,
              decoration: InputDecoration(
                hintText: hint,
                
                suffixIcon: IconButton(onPressed: (){}, icon:Icon(sufixIcon)),
                hintStyle: const TextStyle(
                  color: sActiveColor,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PtxtField extends StatelessWidget {
  const PtxtField({
    Key? key,
    required this.phint,
    required this.inputType,
  }) : super(key: key);
  final String phint;
  // ignore: prefer_typing_uninitialized_variables
  final inputType;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orange[100],
      ),
      child: TextField(
        keyboardType: inputType,
        decoration: InputDecoration(
          hintText: phint,
          hintStyle: const TextStyle(
            color: Colors.black45,
          ),
        ),
      ),
    );
  }
}

class PaymenttxtField extends StatelessWidget {
  const PaymenttxtField({
    Key? key,
    required this.phint,
  }) : super(key: key);
  final String phint;
  // ignore: prefer_typing_uninitialized_variables
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orange[100],
      ),
      child: Text(
        phint,
        style: const TextStyle(
          color: Colors.black45,
        ),
      ),
    );
  }
}
