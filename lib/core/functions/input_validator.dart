import 'package:get/get.dart';

inputValidator(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return "Can Not Be Empty";
  }

  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return " UserName Not Valid ";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return " Email Not Valid";
    }
  }
  if (type == "phonenumber") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Phone Nmber Is Not Valid";
    }
  }
  if (val.length < min) {
    return "Must Be Greater Than $min";
  }
  if (val.length > max) {
    return "Must Be Less Than $max";
  }
}
