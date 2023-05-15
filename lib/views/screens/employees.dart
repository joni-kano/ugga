
import 'package:ugga/all.dart';

class Applications extends StatelessWidget {
  const Applications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding:  const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          const SizedBox(height: 16,),
          const SearchButton(text: "search", hintText: "Search"),
          SingleChildScrollView(
            child: Column(
                children: List.generate(justNowdata.length, (index) =>
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Employee(employeename: justNowdata[index]["employeename"],detail: justNowdata[index]["detail"],image: justNowdata[index]["image"], ),
                  ),
                ),
              ),
          ),
        ],
      ),)
    );
  }
}