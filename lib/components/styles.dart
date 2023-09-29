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