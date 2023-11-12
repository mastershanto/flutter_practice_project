//todo: 1. Styles are appBarTitleLarge, appBarTitleMedium, appBarTitleSmall, appBarTitleExtraSmall
//todo: 2. Styles are bodyTitleLarge, bodyTitleMedium, bodyTitleSmall, bodyTitleExtraSmall
//todo: 3. Styles are bodyHeadlineLarge, bodyHeadlineMedium, bodyHeadlineSmall, bodyHeadlineExtraSmall
//todo: 4. Style are textFormFieldGeneralStyle, textFormFieldCircularStyle, textFormFieldRectangularStyle,
//todo: 5. Style are elevatedButtonGeneralStyle, elevatedButtonCircularStyle, elevatedButtonRectangularStyle

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// TestStyles for AppBar
TextStyle appBarTitleLarge(context,
    {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 50
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Colors.black,
      fontSize: 50,
      fontFamily: fontFamily ?? "",
    );
  }
}

TextStyle appBarTitleMedium(context,
    {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 40
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Colors.black,
      fontSize: 40,
      fontFamily: fontFamily ?? "",
    );
  }
}

TextStyle appBarTitleSmall(context,
    {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 35
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Colors.black,
      fontSize: 35,
      fontFamily: fontFamily ?? "",
    );
  }
}

TextStyle appBarTitleExtraSmall(context,
    {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 25
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Colors.black,
      fontSize: 25,
      fontFamily: fontFamily ?? "",
    );
  }
}

// Text Title styles for Body
TextStyle bodyTitleLarge(context, {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 50
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Colors.black,
      fontSize: 50,
      fontFamily: fontFamily ?? "",
    );
  }
}

TextStyle bodyTitleMedium(context, {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 40
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Colors.black,
      fontSize: 40,
      fontFamily: fontFamily ?? "",
    );
  }
}

TextStyle bodyTitleSmall(context, {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 35
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Colors.black,
      fontSize: 35,
      fontFamily: fontFamily ?? "",
    );
  }
}

TextStyle bodyTitleExtraSmall(context,
    {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 25
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Colors.black,
      fontSize: 25,
      fontFamily: fontFamily ?? "",
    );
  }
}

// Text Headline styles for Body
TextStyle bodyHeadlineLarge(context,
    {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 40
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Colors.black,
      fontSize: 40,
      fontFamily: fontFamily ?? "",
    );
  }
}

TextStyle bodyHeadlineMedium(context,
    {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 35
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Colors.black,
      fontSize: 35,
      fontFamily: fontFamily ?? "",
    );
  }
}

TextStyle bodyHeadlineSmall(context,
    {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 30
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Colors.black,
      fontSize: 30,
      fontFamily: fontFamily ?? "",
    );
  }
}

TextStyle bodyHeadlineExtraSmall(context,
    {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 25
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? Colors.black,
      fontSize: 25,
      fontFamily: fontFamily ?? "",
    );
  }
}

// Normal Text styles for Body
TextStyle bodyTextLarge(context, {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.w300,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 40
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.w300,
      color: color ?? Colors.black,
      fontSize: 40,
      fontFamily: fontFamily ?? "",
    );
  }
}

TextStyle bodyTextMedium(context, {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.w300,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 35
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.w300,
      color: color ?? Colors.black,
      fontSize: 35,
      fontFamily: fontFamily ?? "",
    );
  }
}

TextStyle bodyTextSmall(context, {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.w300,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 30
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.w300,
      color: color ?? Colors.black,
      fontSize: 30,
      fontFamily: fontFamily ?? "",
    );
  }
}

TextStyle bodyTextExtraSmall(context,
    {sizeRatio, color, fontWeight, fontFamily}) {
  var widthOfScreen = MediaQuery.of(context).size.width;
  if (widthOfScreen < 500) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.w300,
      fontSize: sizeRatio == null
          ? widthOfScreen / 500 * 25
          : widthOfScreen / 500 * sizeRatio,
      fontFamily: fontFamily ?? "",
    );
  } else {
    return TextStyle(
      fontWeight: fontWeight ?? FontWeight.w300,
      color: color ?? Colors.black,
      fontSize: 25,
      fontFamily: fontFamily ?? "",
    );
  }
}

/// Styles for Text Form Fields
InputDecoration textFormFieldGeneralStyle(
    {labelText,
    hintText,
    fillColor,
    enableBorderColor,
    focusBorderColor,
    disableBorderColor,
    hintTextColor}) {
  return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 2, color: enableBorderColor ?? Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 2, color: focusBorderColor ?? Colors.blue),
        borderRadius: const BorderRadius.all(Radius.circular(0)),
      ),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: disableBorderColor ?? Colors.red)),
      labelText: labelText,
      border: const OutlineInputBorder(
        borderSide: BorderSide(),
        borderRadius: BorderRadius.all(Radius.circular(0)),
      ),
      filled: true,
      fillColor: fillColor ?? Colors.white,
      hintText: hintText ?? labelText == null
          ? "Enter your input here..."
          : "Enter the ${labelText.toString().toLowerCase()} here...",
      hintStyle: hintTextColor == null
          ? TextStyle(color: hintTextColor)
          : const TextStyle(color: null),
      contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20));
}

InputDecoration textFormFieldCircularStyle(
    {labelText,
    hintText,
    fillColor,
    enableBorderColor,
    focusBorderColor,
    disableBorderColor,
    hintTextColor}) {
  return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 2, color: enableBorderColor ?? Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 2, color: focusBorderColor ?? Colors.blue),
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: disableBorderColor ?? Colors.red)),
      labelText: labelText,
      border: const OutlineInputBorder(
        borderSide: BorderSide(),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      filled: true,
      fillColor: fillColor ?? Colors.white,
      hintText: hintText ?? labelText == null
          ? "Enter your input here..."
          : "Enter the ${labelText.toString().toLowerCase()} here...",
      hintStyle: hintTextColor == null
          ? TextStyle(color: hintTextColor)
          : const TextStyle(color: null),
      contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20));
}

InputDecoration textFormFieldRectangularStyle(
    {labelText,
    hintText,
    fillColor,
    enableBorderColor,
    focusBorderColor,
    disableBorderColor,
    hintTextColor}) {
  return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 2, color: enableBorderColor ?? Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 2, color: focusBorderColor ?? Colors.blue),
        borderRadius: const BorderRadius.all(Radius.circular(0)),
      ),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: disableBorderColor ?? Colors.red)),
      labelText: labelText,
      border: const OutlineInputBorder(
        borderSide: BorderSide(),
        borderRadius: BorderRadius.all(Radius.circular(0)),
      ),
      filled: true,
      fillColor: fillColor ?? Colors.white,
      hintText: hintText ?? labelText == null
          ? "Enter your input here..."
          : "Enter the ${labelText.toString().toLowerCase()} here...",
      hintStyle: hintTextColor == null
          ? TextStyle(color: hintTextColor)
          : const TextStyle(color: null),
      contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20));
}

InputDecoration textFormFieldTopLeftBottomRightCornerStyleOne(
    {labelText, hintText, color}) {
  return InputDecoration(
      labelText: labelText,
      border: const OutlineInputBorder(
        borderSide: BorderSide(width: 2),
      ),
      filled: true,
      fillColor: color ?? Colors.white,
      hintText: hintText ?? labelText == null
          ? "Enter your input here..."
          : "Enter the ${labelText.toString().toLowerCase()} here...",
      contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20));
}

InputDecoration textFormFieldTopRightBottomLeftCornerStyleOne(
    {labelText, hintText, color}) {
  return InputDecoration(
      labelText: labelText,
      border: const OutlineInputBorder(
        borderSide: BorderSide(width: 2),
      ),
      filled: true,
      fillColor: color ?? Colors.white,
      hintText: hintText ?? labelText == null
          ? "Enter your input here..."
          : "Enter the ${labelText.toString().toLowerCase()} here...",
      contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20));
}

/// Styles for Elevated Buttons
/*ButtonStyle elevatedButtonGeneralStyle({required context, bgColor, fgColor}) {
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: bgColor ?? Colors.green,
    foregroundColor: fgColor ?? Colors.white,
  );
}*/
ButtonStyle elevatedButtonGeneralStyle({required context, bgColor, fgColor}) {
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(8),
    textStyle: context == null ? null : bodyHeadlineSmall(context),
    backgroundColor: bgColor ?? Colors.blue,
    foregroundColor: fgColor ?? Colors.white,
    disabledForegroundColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
}

ButtonStyle elevatedButtonCircularStyle({required context, bgColor, fgColor}) {
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(8),
    textStyle: context == null ? null : bodyHeadlineSmall(context),
    backgroundColor: bgColor ?? Colors.blue,
    foregroundColor: fgColor ?? Colors.white,
    disabledForegroundColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  );
}

ButtonStyle elevatedButtonRectangularStyle(
    {required context, bgColor, fgColor}) {
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(8),
    textStyle: context == null ? null : bodyHeadlineSmall(context),
    backgroundColor: bgColor ?? Colors.blue,
    foregroundColor: fgColor ?? Colors.white,
    disabledForegroundColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
  );
}

/*ButtonStyle elevatedButtonRectangularStyle({bgColor, fgColor}) {
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: bgColor ?? Colors.green,
    foregroundColor: fgColor ?? Colors.white,
  );
}*/

TextStyle headLine(context) {
  var width = MediaQuery.of(context).size.width;
  if (width < 700) {
    return const TextStyle(
      color: Colors.red,
      fontSize: 35,
    );
  } else {
    return const TextStyle(
      color: Colors.green,
      fontSize: 65,
    );
  }
}

TextStyle headTok({color, fontSize}) {
  return TextStyle(
      fontSize: fontSize ?? 20,
      color: color ?? Colors.black,
      fontWeight: FontWeight.w900);
}

TextStyle headTextStyle({color}) {
  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: color ?? Colors.black,
  );
}

/// Custom Colors
const colorRedOne = Color.fromRGBO(231, 28, 36, 1);
const colorGreenOne = Color.fromRGBO(33, 191, 115, 1);
const colorWhiteOne = Color.fromRGBO(255, 255, 255, 1);
const colorDeepBlueOne = Color.fromRGBO(50, 0, 125, 1);

///Screen Background

SvgPicture screenBackground(BuildContext context) {
  return SvgPicture.asset(
    "assets/images/Butterfly.svg",
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}
