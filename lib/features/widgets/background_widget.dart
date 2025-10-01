import 'package:flutter/material.dart';
import 'package:seller/core/utils/size_config.dart';
import 'package:seller/theme/app_colors.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: scaleFontSize(280),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          tileMode: TileMode.repeated,
          colors: [secondary, background],
        ),
      ),
    );
  }
}
