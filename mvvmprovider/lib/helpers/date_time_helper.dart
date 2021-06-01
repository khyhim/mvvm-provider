/*
| ---------------------------------------------------------------------- 
| DateTimeHelper
| ----------------------------------------------------------------------     
| DateTimeHelper is date time formating
|
|
|
*/

import 'package:intl/intl.dart';

class DateTimeHelper {
  /*
  *   Format datetime
  *
  *   @param    datetime         dynamic
  *   @param                     String                     Formated datetime
  */
  static String format(dynamic datetime) {
    var formatter = new DateFormat('dd MMM yyyy H:m');
    return formatter.format(DateTime.parse(datetime));
  }

  /*
  *   Format datetime to DB format
  *
  *   @param    datetime         dynamic
  *   @param    String           Formated datetime
  */
  static String formatToDBFormat(dynamic datetime) {
    var formatter = new DateFormat('dd.MM.yyyy');
    return formatter.format(DateTime.parse(datetime));
  }

  static String formatToDBFormats(DateTime datetime) {
    if (datetime == null) return '';
    var formatter = new DateFormat('dd.MM.yyyy');
    return formatter.format(datetime);
  }

  static String formatToTimeFormats(DateTime datetime) {
    if (datetime == null) return '';
    var formatter = new DateFormat('hh:mm a');
    return formatter.format(datetime);
  }
}
