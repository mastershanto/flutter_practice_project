// Module:7, 47_MediaQuery-2

import 'dart:ui';
import 'package:flutter/material.dart';


TextStyle headLine(context) {
  var width= MediaQuery.of(context).size.width;
  if(width<700){
    return TextStyle(
      color: Colors.red,
      fontSize: 35,
    );
  }else{
    return TextStyle(
      color: Colors.green,
      fontSize: 65,
    );
  }
}
TextStyle mSizedText({color}){
  return TextStyle(fontSize: 20, color:color??Colors.black, fontWeight: FontWeight.w900);
}

TextStyle HeadTextStyle({color}){
  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: color??Colors.black,
  );
}

InputDecoration AppInputStyle_1(label_1){
  return InputDecoration(labelText: label_1,
    border:OutlineInputBorder(),
    filled: true,
    fillColor: Colors.white,
    hintText: "Enter the number",
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20)
  );

}

ButtonStyle AppButtonStyle_1({bgColor,fgColor}){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: bgColor??Colors.green,
    foregroundColor: fgColor?? Colors.white,
  );
}