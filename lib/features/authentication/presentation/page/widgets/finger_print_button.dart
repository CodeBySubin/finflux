import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/constants.dart';

Widget fingerPrintButton({void Function()? onTap}) {
  return InkWell(onTap: onTap, child: SvgPicture.asset(AppIcons.fingerPrint));
}

