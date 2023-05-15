import 'package:ugga/all.dart';

class SearchButton extends StatefulWidget {
  final String text;
  //final ValueChanged<String> onChanged;
  final String hintText;
  const SearchButton({
    Key? key,
    required this.text,
    required this.hintText,
    //required this.onChanged,
  }) : super(key: key);

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const styleActive = TextStyle(color: Colors.black);
    const  styleHint = TextStyle(color: Colors.black54);
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return Container(
      height: 42,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: sActiveColor),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: style.color),
          suffixIcon: widget.text.isNotEmpty?
          GestureDetector(
            child: Icon(Icons.close,color: style.color),
            onTap: (){
              controller.clear();
              //widget.onChanged('');
              FocusScope.of(context).requestFocus();
            },
          )
          : null,
          hintText: widget.hintText,
          hintStyle: style,
          border: InputBorder.none,
        ),
        style: style,
       // onChanged: widget.onChanged,
      ),
    );
  }
}
