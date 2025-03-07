import 'package:flutter/material.dart';
import 'package:lottie_tutorial/widgets/lottie_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  bool isLoading = false;
  String lottieSrc = "";

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Lottie Tutorial",
        ),
      ),
      body: isLoading
          ? Center(
              child: LottieWidget(src: lottieSrc),
            )
          : ListView(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text(
                        "Show Loading 1",
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
