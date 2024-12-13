import 'package:estate_app/constants/color.dart';
import 'package:estate_app/data/data.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Profile",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: AssetImage(users[0].avatar),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      users[0].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "premium (9 days)",
                      style: TextStyle(color: AppColor.primaryColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "General",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                customListTile(context, "Subscription & payment",
                    Icons.credit_card, () {}),
                customListTile(context, "Profile Settings",
                    Icons.person_2_outlined, () {}),
                customListTile(context, "Password", Icons.lock, () {}),
                customListTile(context, "Notification",
                    Icons.notifications_outlined, () {}),
                customListTile(context, "Logout", Icons.logout, () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile customListTile(
      BuildContext context, String name, IconData icon, Function() function) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Icon(
        icon,
        color: AppColor.primaryColor,
      ),
      title: Text(
        name,
        style: const TextStyle(color: AppColor.primaryColor),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: AppColor.primaryColor,
      ),
      onTap: function,
    );
  }
}
