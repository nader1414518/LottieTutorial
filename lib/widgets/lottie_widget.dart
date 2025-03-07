import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieWidget extends StatelessWidget {
  final String src;

  const LottieWidget({
    super.key,
    required this.src,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Lottie.asset(
        src,
      ),
    );
  }
}
