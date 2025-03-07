import 'package:flutter/material.dart';
import 'package:lottie_tutorial/utils/lotties_utils.dart';
import 'package:lottie_tutorial/widgets/lottie_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;
  String lottieSrc = "";

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
          // ? const Center(
          //     child: CircularProgressIndicator(),
          //   )
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
                      onPressed: () async {
                        setState(() {
                          lottieSrc = LottiesUtils.loading1;
                          isLoading = true;
                        });

                        await Future.delayed(
                          const Duration(
                            seconds: 5,
                          ),
                        );

                        setState(() {
                          isLoading = false;
                        });
                      },
                      label: const Text(
                        "Show Loading 1",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () async {
                        setState(() {
                          lottieSrc = LottiesUtils.loading2;
                          isLoading = true;
                        });

                        await Future.delayed(
                          const Duration(
                            seconds: 5,
                          ),
                        );

                        setState(() {
                          isLoading = false;
                        });
                      },
                      label: const Text(
                        "Show Loading 2",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () async {
                        setState(() {
                          lottieSrc = LottiesUtils.loading3;
                          isLoading = true;
                        });

                        await Future.delayed(
                          const Duration(
                            seconds: 5,
                          ),
                        );

                        setState(() {
                          isLoading = false;
                        });
                      },
                      label: const Text(
                        "Show Loading 3",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () async {
                        setState(() {
                          lottieSrc = LottiesUtils.loading4;
                          isLoading = true;
                        });

                        await Future.delayed(
                          const Duration(
                            seconds: 5,
                          ),
                        );

                        setState(() {
                          isLoading = false;
                        });
                      },
                      label: const Text(
                        "Show Loading 4",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () async {
                        setState(() {
                          lottieSrc = LottiesUtils.loading5;
                          isLoading = true;
                        });

                        await Future.delayed(
                          const Duration(
                            seconds: 5,
                          ),
                        );

                        setState(() {
                          isLoading = false;
                        });
                      },
                      label: const Text(
                        "Show Loading 5",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () async {
                        setState(() {
                          lottieSrc = LottiesUtils.loading6;
                          isLoading = true;
                        });

                        await Future.delayed(
                          const Duration(
                            seconds: 5,
                          ),
                        );

                        setState(() {
                          isLoading = false;
                        });
                      },
                      label: const Text(
                        "Show Loading 6",
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
