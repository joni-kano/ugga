import 'package:ugga/all.dart';

class Orders extends StatelessWidget {
  const Orders(
      {Key? key,
      required this.employeename,
      required this.status,
      required this.detail,
      required this.image})
      : super(key: key);
  final String employeename;
  final String detail;
  final String image;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(image),
        ),
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
                    employeename,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  StatusButton(title1: "pending", title2:"completed", status: status, )
                ],
              ),
              
              const SizedBox(
                height: 4,
              ),
              Text(
                detail,
                style: const TextStyle(color: Colors.black38, fontSize: 12),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
          // child: OrderButton(
          //   title1: "view",
          //   title2: "Viewed",
          // ),
        ))
      ],
    );
  }
}



class Employee extends StatelessWidget {
  const Employee(
      {Key? key,
      required this.employeename,
      required this.detail,
      required this.image})
      : super(key: key);
  final String employeename;
  final String detail;
  final String image;
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(image),
        ),
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
                    employeename,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  
                ],
              ),
              
              const SizedBox(
                height: 4,
              ),
              Text(
                detail,
                style: const TextStyle(color: Colors.black38, fontSize: 12),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
          // child: OrderButton(
          //   title1: "view",
          //   title2: "Viewed",
          // ),
        ))
      ],
    );
  }
}
