import 'package:ugga/all.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  
  
  // ignore: prefer_typing_uninitialized_variables
  var onChanged;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sActiveColor,
        title: const Center(child: Text("New Task")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Whats needs to be done ?",
            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold,
            ),),
          ),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Start Typing the task...',
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, ),
            child: Text("By When",
            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold,
            ),),
          ),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextFormField(
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: "Due Date & Time",
              suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward))
            ),
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
            const Text("Set Task Reminder",
            style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold,
            ),),
             Switch(value: false, onChanged: onChanged)
            ]
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: 
          Divider(thickness: 1,)
        ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TxtButton(bname: "Create Task",pressFunction: () {
                      
                    },),
      ),
    );
  }
}

class SingingCharacter {
}