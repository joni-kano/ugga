import 'package:ugga/all.dart';

class Flight extends StatelessWidget {
  const Flight({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    shadowColor: sActiveColor,
                    child: Expanded(
                        child: SizedBox(
                            height: 140,
                            width: 140,
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.file_upload,
                                    color: sActiveColor,
                                  ),
                                ),
                                const Text("Visa Application"),
                              ],
                            )))),
                  ),
                  Card(
                    shadowColor: sActiveColor,
                    child: Expanded(
                        child: SizedBox(
                            height: 140,
                            width: 140,
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.money,
                                    color: sActiveColor,
                                  ),
                                ),
                                const Text("Payment Completion"),
                              ],
                            )))),
                  ),
                ],
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    shadowColor: sActiveColor,
                    child: Expanded(
                        child: SizedBox(
                            height: 140,
                            width: 140,
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Get.to(const Tasks());
                                  },
                                  icon: const Icon(
                                    Icons.task,
                                    color: sActiveColor,
                                  ),
                                ),
                                const Text("Book Flight"),
                              ],
                            )))),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: sActiveColor),
                child: TextButton(
                  onPressed: () {
                    Get.to(const BtmNavbar());
                  },
                  child: const Text(
                    "Complete",
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
