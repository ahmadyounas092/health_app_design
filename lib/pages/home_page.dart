import 'package:flutter/material.dart';
import 'package:health_app_design/utils/emotion_face.dart';
import 'package:health_app_design/utils/exercise_tile.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  // Greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Ahmad
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
                          const SizedBox(height: 4),
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
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Search bar
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
                        const SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            autofocus: false,
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
                  const SizedBox(height: 24),
                  // How do you feel? Heading
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Emotion Faces
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Bad
                        GestureDetector(
                          onTap: () {},
                          child: const Column(
                            children: [
                              EmotionFace(emotionFace: "😫"),
                              SizedBox(height: 8),
                              Text(
                                "Bad",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        // Fine
                        GestureDetector(
                          onTap: () {},
                          child: const Column(
                            children: [
                              EmotionFace(emotionFace: "😊"),
                              SizedBox(height: 8),
                              Text(
                                "Fine",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        // Well
                        GestureDetector(
                          onTap: () {},
                          child: const Column(
                            children: [
                              EmotionFace(emotionFace: "😄"),
                              SizedBox(height: 8),
                              Text(
                                "Well",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        // Excellent
                        GestureDetector(
                          onTap: () {},
                          child: const Column(
                            children: [
                              EmotionFace(emotionFace: "😁"),
                              SizedBox(height: 8),
                              Text(
                                "Excellent",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Expanded part with ListView for exercises
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38),
                      topRight: Radius.circular(38)),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    // Exercises heading
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exercises",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(height: 25),
                    // Exercises list
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ExerciseTile(
                            onTap: () {},
                            iconContainerColor: Colors.orange.shade600,
                            title: "Speaking Skills",
                            subTitle: "15 exercises",
                            iconData: Icons.voice_chat,
                            iconColor: Colors.white,
                          ),
                          const SizedBox(height: 10),
                          ExerciseTile(
                            onTap: () {},
                            iconContainerColor: Colors.green,
                            title: "Reading Skills",
                            subTitle: "15 exercises",
                            iconData: Icons.library_books,
                            iconColor: Colors.white,
                          ),
                          const SizedBox(height: 10),
                          ExerciseTile(
                            onTap: () {},
                            iconContainerColor: Colors.pink,
                            title: "Writing Skills",
                            subTitle: "15 exercises",
                            iconData: Icons.create,
                            iconColor: Colors.white,
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
