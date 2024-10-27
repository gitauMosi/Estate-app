import 'package:estate_app/auth/login_page.dart';
import 'package:estate_app/constants/color.dart';
import 'package:estate_app/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.only(top: 150),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  color: AppColor.secondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Register",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: AppColor.primaryColor),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextField(
                      decoration: InputDecoration(hintText: "Your Name"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Email",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextField(
                      decoration: InputDecoration(hintText: "Your Email id"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      obscureText: isObscure,
                      decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isObscure = !isObscure;
                                });
                              },
                              child: isObscure
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off))),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: CustomBtn(label: "REGISTER", function: () {})),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "I already have an account",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 12,
                                color: AppColor.primaryColor),
                          )),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
