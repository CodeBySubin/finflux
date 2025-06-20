import 'package:finflux/core/constants/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(String message) {
  Fluttertoast.showToast(
    gravity: ToastGravity.TOP,
    msg: message,
    fontSize: 15,
    backgroundColor: AppColor.colorprimary,
  );
}
