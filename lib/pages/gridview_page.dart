import 'package:flutter/material.dart';
import 'package:health_app_design/utils/consultant_tile.dart';
import 'package:health_app_design/utils/row_container_util.dart';
import 'package:intl/intl.dart';

class GridviewPage extends StatefulWidget {
  const GridviewPage({super.key});

  @override
  State<GridviewPage> createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    // Hi, Ahmad
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Hi, Ahmad!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              DateFormat("dd MMM, yyyy").format(DateTime.now()),
                              style: TextStyle(color: Colors.indigo[100]),
                            ),
                          ],
                        ),
                        // Notifications
                        Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.blue[400],
                                borderRadius: BorderRadius.circular(14)),
                            child: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    // search bar
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                          color: Colors.blue[500],
                          borderRadius: BorderRadius.circular(14)),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextField(
                              controller: searchController,
                              style: const TextStyle(color: Colors.white70),
                              cursorColor: Colors.white70,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                                hintStyle: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Content that scrolls properly when keyboard appears
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                              color: Colors.blueGrey[700],
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const Icon(Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: RowContainerUtil(
                              containerName: "Relationship",
                              containerColor: [
                                Colors.deepPurple.shade500,
                                Colors.purple.shade400,
                                Colors.deepPurple.shade500
                              ]),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: RowContainerUtil(
                              containerName: "Career",
                              containerColor: [
                                Colors.blue.shade400,
                                Colors.blueAccent.shade200,
                                Colors.blue.shade400
                              ]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: RowContainerUtil(
                              containerName: "Education",
                              containerColor: [
                                Colors.orange.shade600,
                                Colors.orangeAccent.shade200,
                                Colors.orange.shade600
                              ]),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: RowContainerUtil(
                              containerName: "Other",
                              containerColor: [
                                Colors.pink.shade400,
                                Colors.pinkAccent.shade100,
                                Colors.pink.shade400
                              ]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Consultant",
                          style: TextStyle(
                              color: Colors.blueGrey[700],
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const Icon(Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: const [
                        ConsultantTile(
                            avatar: "assets/avatar/singer.jpg",
                            title: "Luis Fonsi",
                            subTitle: "Singer"),
                        SizedBox(
                          height: 10,
                        ),
                        ConsultantTile(
                            avatar: "assets/avatar/doctor.jpg",
                            title: "Doctor Jarred",
                            subTitle: "Health"),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
