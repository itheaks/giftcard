import '../models/eight_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EightItemWidget extends StatelessWidget {
  EightItemWidget(
    this.eightItemModelObj, {
    Key? key,
    this.onTapButton,
  }) : super(
          key: key,
        );

  EightItemModel eightItemModelObj;

  VoidCallback? onTapButton;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomElevatedButton(
        width: 327.h,
        text: "lbl_get_started".tr,
        margin: EdgeInsets.only(top: 139.v),
        onPressed: () {
          onTapButton!.call();
        },
      ),
    );
  }
}
