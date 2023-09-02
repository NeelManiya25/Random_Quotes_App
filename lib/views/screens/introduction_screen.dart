import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class intro_page extends StatefulWidget {
  const intro_page({super.key});

  @override
  State<intro_page> createState() => _intro_pageState();
}

class _intro_pageState extends State<intro_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: " The Random Quotes in App",
            body:
                "Give me a good script, and I’ll be a hundred times better as a director",
            image: Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/736x/86/9f/4d/869f4d30ba3106f79394e7a73b2e35e1.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          PageViewModel(
            title: " The Random Quotes in App",
            body:
                "Give me a good script, and I’ll be a hundred times better as a director",
            image: Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/736x/b2/50/ff/b250ff34d91466a926013b3847cd35f6.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
        ],
        done: Text("done"),
        onDone: () async {
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.setBool("isIntroVisited", true);
          Navigator.pushReplacementNamed(context, 'SplashScreen');
        },
        next: Text("Next"),
        showNextButton: true,
      ),
    );
  }
}
