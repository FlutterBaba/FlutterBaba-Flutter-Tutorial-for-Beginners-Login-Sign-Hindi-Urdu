import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_sign/components/my_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/image-2.png"),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffD84C75),
                    Color(0xffF73343),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 48,
                      ),
                    ),
                    Text(
                      "Contrary to popular belief, Lorem Ipsum is not simply .",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const TextField(
                      decoration: InputDecoration(label: Text("Email")),
                    ),
                    const SizedBox(height: 20),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(label: Text("Password")),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: CupertinoButton(
                        child: const Text("Forget your Password ?"),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(height: 20),
                     MyButton(
                      buttonText: "Login",
                      onPressed: (){},
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
