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
                const SizedBox(
                  height: 15,
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
                  height: 15,
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
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.primaryColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                  leading: Container(
                    //height: 50,
                    width: 40,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColor.primaryColorLight),
                    child: const Icon(
                      Icons.credit_card,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  title: const Text(
                    "Subscription & payment",
                    style: TextStyle(color: AppColor.primaryColor),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColor.primaryColor,
                  ),
                  onTap: () {},
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                  leading: Container(
                    //height: 50,
                    width: 40,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColor.primaryColorLight),
                    child: const Icon(
                      Icons.person_2_outlined,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  title: const Text(
                    "Profile Settings",
                    style: TextStyle(color: AppColor.primaryColor),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColor.primaryColor,
                  ),
                  onTap: () {},
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                  leading: Container(
                    //height: 50,
                    width: 40,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColor.primaryColorLight),
                    child: const Icon(
                      Icons.lock,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  title: const Text(
                    "Password",
                    style: TextStyle(color: AppColor.primaryColor),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColor.primaryColor,
                  ),
                  onTap: () {},
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                  leading: Container(
                    //height: 50,
                    width: 40,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColor.primaryColorLight),
                    child: const Icon(
                      Icons.notifications_outlined,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  title: const Text(
                    "Notification",
                    style: TextStyle(color: AppColor.primaryColor),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColor.primaryColor,
                  ),
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                  leading: Container(
                    //height: 50,
                    width: 40,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColor.primaryColorLight),
                    child: const Icon(
                      Icons.logout,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  title: const Text(
                    "Logout",
                    style: TextStyle(color: AppColor.primaryColor),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColor.primaryColor,
                  ),
                  onTap: () {},
                ),
                const Divider()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
