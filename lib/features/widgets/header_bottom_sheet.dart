import 'package:flutter/material.dart';
import 'package:seller/core/constants/app_styles.dart';
import 'package:seller/core/utils/size_config.dart';
import 'package:seller/features/widgets/box_widget.dart';
import 'package:seller/features/widgets/circle_icon_widget.dart';
import 'package:seller/theme/app_colors.dart';

class HeaderBottomSheet extends StatelessWidget {
  const HeaderBottomSheet(
      {super.key, required this.childWidget, this.onCancell});
  final Widget childWidget;
  final Color bgHeader = mainColor50;
  final VoidCallback? onCancell;

  @override
  Widget build(BuildContext context) {
    return BoxWidget(
      isRounding: false,
      topLeft: 8,
      topRight: 8,
      gradient: const LinearGradient(colors: [mainColor, mainColor50]),
      isBoxShadow: false,
      padding: EdgeInsets.all(scaleFontSize(appSpace8)),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          childWidget,
          CircleIconWidget(
            icon: Icons.close,
            colorIcon: white,
            onPress: onCancell ?? () => Navigator.of(context).pop(),
            bgColor: grey20,
          ),
        ],
      ),
    );
  }
}
