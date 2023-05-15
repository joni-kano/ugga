import 'package:ugga/all.dart';
import 'package:ugga/widgets/taskitem.dart';

class Tasks extends StatelessWidget {
  const Tasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const SearchButton(
                text: "Search for Task", hintText: "Search for Task"),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Tasks",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: List.generate(
                  taskData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TaskItem(
                      detail: taskData[index]["detail"],
                      status: taskData[index]["status"],
                      assignee: taskData[index]["assignee"],
                    ),
                  ),
                ),
              ),
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: sActiveColor,
        foregroundColor: Colors.white,
        onPressed: () {
          Get.to(const CreateTask());
        },
        child: IconButton(
          onPressed: () {
            Get.to(const CreateTask());
          },
          icon: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
