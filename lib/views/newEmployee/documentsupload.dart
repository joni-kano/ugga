import 'package:ugga/all.dart';

class UploadDocuments extends StatelessWidget {
  const UploadDocuments({Key? key}) : super(key: key);

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
                                const Text("Medical Report"),
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
                                const Text("Bank Statement"),
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
                                const Text("Birth Certificate"),
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
                                    Icons.people,
                                    color: sActiveColor,
                                  ),
                                ),
                                const Text("DownPayments"),
                              ],
                            )))),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: sActiveColor),
                child: TextButton(
                  onPressed: () {
                    Get.to(const Flight());
                  },
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
