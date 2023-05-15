import 'package:firebase_auth/firebase_auth.dart';
import 'package:ugga/all.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      backgroundColor: Colors.white24,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 380,
                  child: Stack(
                    children: [
                      Container(
                        height: 250,
                        color: sActiveColor,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SafeArea(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  Icons.notification_add,
                                  size: 20,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.white,
                                    backgroundImage: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                                    )),
                                const SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      "Good Morning",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      user.email!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                            color: Colors.white,
                                          ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "Lets work together to  make this world a better place",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            )
                          ],
                        )),
                      ),
                      Positioned(
                        top: 180,
                        left: 16,
                        right: 16,
                        height: 160,
                        child: Card(
                          shadowColor: sActiveColor,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 40,
                            ),
                            child: Stack(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: const [
                                          Text("Pendings Applicants",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                          Text("12",
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  color: sActiveColor,
                                                  fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: const [
                                          Text("Complete Applicants",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                          Text("12",
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  color: sActiveColor,
                                                  fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: const [
                                          Text("Total Employees",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                          Text("12",
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  color: sActiveColor,
                                                  fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: defaultPadding),
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
                                      onPressed: () {
                                        Get.to(const CreateEmployee());
                                      },
                                      icon: const Icon(
                                        Icons.person_add,
                                        color: sActiveColor,
                                      ),
                                    ),
                                    const Text("Register"),
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
                                      onPressed: () {
                                        Get.to(const CalcScreen());
                                      },
                                      icon: const Icon(
                                        Icons.money,
                                        color: sActiveColor,
                                      ),
                                    ),
                                    const Text("Payments"),
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
                                    const Text("Tasks"),
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
                                    const Text("Employees"),
                                  ],
                                )))),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
