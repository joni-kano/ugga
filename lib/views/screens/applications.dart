import 'package:ugga/all.dart';

class Employees extends StatelessWidget {
  const Employees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      body:
      
      
      Padding(padding: const EdgeInsets.all(defaultPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16,),
            const SearchButton(text: "enter name ", hintText: "Search", ),
            
            Text("Todays",style:Theme.of(context).textTheme.titleLarge,),
            const SizedBox(
                height: defaultPadding,
              ),
              SingleChildScrollView(
                child: Column(
                children: List.generate(todaysdata.length, (index) =>
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Orders(employeename: todaysdata[index]["employeename"],detail: todaysdata[index]["detail"],image: todaysdata[index]["image"], status:todaysdata[index]["status"],),
                  ),
                ),
                        ),
              ),
            Text("Old Orders",style:Theme.of(context).textTheme.titleLarge,),
            const SizedBox(
                height: defaultPadding,
              ),
              SingleChildScrollView(
                child: Column(
                children: List.generate(olddata.length, (index) =>
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Orders(employeename: olddata[index]["employeename"],detail: olddata[index]["detail"],image: olddata[index]["image"], status: olddata[index]["status"],),
                  ),
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