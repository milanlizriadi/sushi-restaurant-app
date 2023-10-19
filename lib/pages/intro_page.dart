import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:sushi_restaurant_app/components/button.dart";
import "package:sushi_restaurant_app/pages/colors.dart";

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),

            // Shop Name
            Text(
              "MILAN SUSHI",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),

            // Icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset("lib/images/many_sushi.png"),
            ),

            const SizedBox(height: 10),

            // Title
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            // Subtitle
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(
                color: Colors.grey[200],
                height: 2,
              ),
            ),

            const SizedBox(height: 25),

            // Get Started Button
            MyButton(
              text: "Get Started",
              onTap: () {
                // Go to menu page
                Navigator.pushNamed(context, "/menupage");
              },
            )
          ],
        ),
      ),
    );
  }
}
