// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const ADTURL = "assets/images/adt_token.png";
const GIFTURL = "assets/images/gift.png";

// ignore: must_be_immutable
class Icon extends StatelessWidget {
  double? imgWidth = 22.w;
  double? imgHeight = 22.w;
  String imgUrl;
  String? value = "";
  TextStyle? textStyle;
  Icon(
      {super.key,
      required this.imgUrl,
      this.imgWidth,
      this.imgHeight,
      this.value,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 4.w),
          child: Image(
            width: imgWidth ?? 22.w,
            height: imgHeight ?? 22.w,
            image: AssetImage(imgUrl),
          ),
        ),
        Text(
          value ?? "",
          style: textStyle ??
              TextStyle(
                fontFamily: "D-DIN-PRO",
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                color: const Color(0XFFE5B045),
              ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class AdtIcon extends StatelessWidget {
  double? imgWidth = 22.w;
  double? imgHeight = 22.w;
  String? value = "";
  TextStyle? textStyle;

  AdtIcon(
      {super.key, this.imgWidth, this.imgHeight, this.value, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Icon(
      imgUrl: ADTURL,
      imgHeight: imgHeight,
      imgWidth: imgWidth,
      value: value,
      textStyle: textStyle,
    );
  }
}

// ignore: must_be_immutable
class GiftIcon extends StatelessWidget {
  double? imgWidth = 24.w;
  double? imgHeight = 24.w;
  String? value = "";
  TextStyle? textStyle;
  GiftIcon(
      {super.key, this.imgWidth, this.imgHeight, this.value, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Icon(
      imgUrl: GIFTURL,
      imgHeight: imgHeight,
      imgWidth: imgWidth,
      value: value,
      textStyle: textStyle,
    );
  }
}
