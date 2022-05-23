import 'package:flutter/material.dart';
import 'package:artryouts/utils.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';

class changepsw extends StatefulWidget {
  changepsw({Key? key}) : super(key: key);

  @override
  State<changepsw> createState() => _changepsw();
}

class _changepsw extends State<changepsw> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: screenHeight * 0.05),
                // Logo
                logo(),
                SizedBox(height: screenHeight * 0.03),
                // Reset pwd Banner
                Text(
                  'Reset Password',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 59, 59, 61),
                    fontSize: screenHeight * 0.04,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                PasswordFields(context),

                // Reset Button
                coolButton(
                    text: "Reset",
                    functionToComply: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                      // Navigator.pop(context);
                    }),
                const SizedBox(height: 10),
              ]),
        ),
      ),
    );
  }

  Widget PasswordFields(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 0.8,
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
        child: Column(
          children: <Widget>[
            // Pswd TextField
            artryoutsTextField(
              hint: "New Password",
              control: TextEditingController(),
              pswd: true,
            ),
            // Password TextField
            artryoutsTextField(
              hint: "Confirm Password",
              control: TextEditingController(),
              pswd: true,
            ),
          ],
        ),
      ),
    );
  }
}
