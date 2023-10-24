import 'package:flutter/material.dart';

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
InputDecoration textFormFieldGeneralStyle({labelText, hintText, color}) {
  return InputDecoration(
      labelText: labelText,
      border: OutlineInputBorder(),
      filled: true,
      fillColor: color ?? Colors.white,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: 2,
        ),
      ),
      hintText: hintText ?? labelText == null
          ? "Enter your input here..."
          : "Enter the ${labelText.toString().toLowerCase()} here...",
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20));
}

InputDecoration textFormFieldCircularStyle({labelText, hintText, color}) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2)),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 4)),
      labelText: labelText,
      border: OutlineInputBorder(
        borderSide: BorderSide(),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      filled: true,
      fillColor: color ?? Colors.white,
      hintText: hintText ?? labelText == null
          ? "Enter your input here..."
          : "Enter the ${labelText.toString().toLowerCase()} here...",
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20));
}

InputDecoration textFormFieldRectangularStyle({labelText, hintText, color}) {
  return InputDecoration(
      labelText: labelText,
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 2),
      ),
      filled: true,
      fillColor: color ?? Colors.white,
      hintText: hintText ?? labelText == null
          ? "Enter your input here..."
          : "Enter the ${labelText.toString().toLowerCase()} here...",
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20));
}

InputDecoration textFormFieldCornerStyleOne({labelText, hintText, color}) {
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
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20));
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
    textStyle: context==null? null: bodyHeadlineSmall(context),
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
    textStyle: context==null? null: bodyHeadlineSmall(context),
    backgroundColor: bgColor ?? Colors.blue,
    foregroundColor: fgColor ?? Colors.white,
    disabledForegroundColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  );
}
ButtonStyle elevatedButtonRectangularStyle({required context, bgColor, fgColor}) {
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(8),
    textStyle: context==null? null: bodyHeadlineSmall(context),
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
    return TextStyle(
      color: Colors.red,
      fontSize: 35,
    );
  } else {
    return TextStyle(
      color: Colors.green,
      fontSize: 65,
    );
  }
}

TextStyle head_tok({color, fontSize}) {
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
