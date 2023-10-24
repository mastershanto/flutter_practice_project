// import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeFormats_V1 {

  dateTime_Format_1(dateTime_ListTile, context){
    return DateFormat("dd-MM-yyyy, hh:mma")
        .format(dateTime_ListTile.dateTime);}

  dateTime_Format_2(dateTime_ListTile, context) {
    return DateFormat("dd-MM-yyyy, hh:mm:ssa")
        .format(dateTime_ListTile.dateTime);}
  dateTime_Format_3(dateTime_ListTile, context) {
    return DateFormat("dd/MM/yyyy (hh:mm:ssa)").format(DateTime.now());}



}

