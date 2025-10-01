import 'package:flutter/material.dart';
import 'package:seller/core/constants/app_styles.dart';
import 'package:seller/core/utils/helpers.dart';
import 'package:seller/core/utils/size_config.dart';
import 'package:seller/features/widgets/btn_wiget.dart';
import 'package:seller/features/widgets/header_bottom_sheet.dart';
import 'package:seller/features/widgets/text_widget.dart';
import 'package:seller/localization/trans.dart';
import 'package:seller/theme/app_colors.dart';

class ButtomSheetFilterWidget extends StatelessWidget {
  const ButtomSheetFilterWidget(
      {super.key,
      required this.child,
      this.onClose,
      this.onApply,
      this.onReset});

  final Widget child;
  final Function? onClose;
  final Function? onApply;
  final Function? onReset;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        spacing: 8.scale,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          HeaderBottomSheet(
            childWidget: TextWidget(
              text: greeting("filter_options"),
              color: white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          child,
          Helpers.gapH(8.scale),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: scaleFontSize(appSpace)),
              child: Row(
                spacing: 8.scale,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (onReset != null)
                    Expanded(
                      child: BtnWidget(
                        onPressed: () => onReset?.call(),
                        title: greeting("reset_filter"),
                        bgColor: error,
                      ),
                    ),
                  if (onApply != null)
                    Expanded(
                      child: BtnWidget(
                        gradient: linearGradient,
                        onPressed: () => onApply?.call(),
                        title: greeting("apply_filter"),
                        bgColor: primary,
                      ),
                    ),
                ],
              ),
            ),
          ),
          Helpers.gapH(8.scale),
        ],
      ),
    );
  }
}
