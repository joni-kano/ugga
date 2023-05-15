import 'package:ugga/all.dart';

// ignore: must_be_immutable
class TaskItem extends StatelessWidget {
  

   TaskItem(
      {Key? key,
      required this.status,
      required this.detail,
      required this.assignee
      })
      : super(key: key);
  
  final String detail;
  final String assignee;
  final bool status;
  late bool? _throwShotAway;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (bool? newValue) {
    setState(() {
      _throwShotAway = newValue!;
    });
  },),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          flex: 2,
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                detail,
                style: const TextStyle(color: Colors.black45, fontSize: 12),
              ),
                
                  StatusButton(title1: "pending", title2:"completed", status: status, )
                ],
              ),
              
              const SizedBox(
                height: 4,
              ),
              
            ],
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
          // child: OrderButton(
          //   title1: "view",
          //   title2: "Viewed",
          // ),
        ))
      ],
    );
  }
  
  void setState(Null Function() param0) {}
}
