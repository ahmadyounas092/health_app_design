import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                  // Profile info
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // User avatar and details
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/users/user.jpg",
                              height: 50,
                              width: 50,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Ahmad",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          const Text(
                            "ahmad@4nons.com",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 16),
                          ),
                        ],
                      ),
                      // Edit profile button
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(14)),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Expanded part with ListView for settings
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38),
                      topRight: Radius.circular(38)),
                ),
                child: Column(
                  children: [
                    // Settings heading
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Settings",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(height: 25),
                    // Settings list
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            leading: Icon(Icons.lock, color: Colors.blue[700]),
                            title: const Text("Change Password"),
                            trailing: const Icon(Icons.arrow_forward_ios),
                          ),
                          ListTile(
                            leading: Icon(Icons.notifications,
                                color: Colors.blue[700]),
                            title: const Text("Notifications"),
                            trailing: const Icon(Icons.arrow_forward_ios),
                          ),
                          ListTile(
                            leading:
                                Icon(Icons.language, color: Colors.blue[700]),
                            title: const Text("Language"),
                            trailing: const Icon(Icons.arrow_forward_ios),
                          ),
                          ListTile(
                            leading: Icon(Icons.help, color: Colors.blue[700]),
                            title: const Text("Help & Support"),
                            trailing: const Icon(Icons.arrow_forward_ios),
                          ),
                          const ListTile(
                            leading: Icon(Icons.logout, color: Colors.red),
                            title: Text("Sign Out",
                                style: TextStyle(color: Colors.red)),
                            trailing: Icon(Icons.arrow_forward_ios,
                                color: Colors.red),
                          ),
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
