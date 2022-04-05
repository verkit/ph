import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_resto/core/utils/colors.dart';

const double kDesktopWidth = 900;
const double kTabletWidth = 600;
const double kMobileWidth = 300;

double responsiveSize(
  BuildContext context,
  double size, {
  double? minSize,
  double? maxSize,
}) {
  var screenWidth = MediaQuery.of(context).size.width;
  double _size = size * screenWidth;

  double _minSize = minSize ?? size;
  double _maxSize = maxSize ?? size;

  if (screenWidth >= kDesktopWidth) {
    _size /= kDesktopWidth;
  } else if (screenWidth >= kTabletWidth) {
    _size /= kTabletWidth;
  } else {
    _size /= kMobileWidth;
  }

  // if (minSize != null && maxSize != null) {
  //   if (_size <= minSize) {
  //     return minSize;
  //   } else if (maxSize <= _size) {
  //     return maxSize;
  //   } else {
  //     return _size;
  //   }
  // } else if (minSize != null) {
  //   return _size <= minSize ? minSize : _size;
  // } else if (maxSize != null) {
  //   return maxSize <= _size ? maxSize : _size;
  // }
  // return _size;

  if (_size <= _minSize) {
    return _minSize;
  } else if (_maxSize <= _size) {
    return _maxSize;
  } else {
    return _size;
  }
}

double fontResponsive(
  BuildContext context,
  double size, {
  double? minSize,
  double? maxSize,
}) {
  var screenWidth = MediaQuery.of(context).size.width;
  double _size = size * screenWidth;
  double _minSize = size - 2;
  double _maxSize = size + 3;

  if (minSize != null) {
    _minSize = minSize;
  }

  if (maxSize != null) {
    _maxSize = maxSize;
  }

  if (screenWidth >= kDesktopWidth) {
    _size /= kDesktopWidth;
  } else if (screenWidth >= kTabletWidth) {
    _size /= kTabletWidth;
  } else {
    _size /= kMobileWidth;
  }

  if (_size <= _minSize) {
    return _minSize;
  } else if (_maxSize <= _size) {
    return _maxSize;
  } else {
    return _size;
  }
}

ThemeData themeData(BuildContext context) {
  final _theme = ThemeData();
  final _textTheme = Theme.of(context).textTheme;
  final _buttonTheme = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(AppColor.buttonColor),
    foregroundColor: MaterialStateProperty.all(AppColor.primaryColor),
  );

  return ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.primaryColor,
      foregroundColor: AppColor.textColor,
      elevation: 0,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColor.buttonColor,
      textTheme: ButtonTextTheme.normal,
    ),
    colorScheme: _theme.colorScheme.copyWith(
      secondary: AppColor.accentColor,
      onBackground: AppColor.backgroundAccentColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: _buttonTheme,
    ),
    iconTheme: IconThemeData(
      color: AppColor.accentColor,
      size: 21,
    ),
    primaryColor: AppColor.primaryColor,
    textButtonTheme: TextButtonThemeData(style: _buttonTheme),
    textTheme: GoogleFonts.poppinsTextTheme(_textTheme),
    scaffoldBackgroundColor: AppColor.primaryColor,
  );
}

final textThin = GoogleFonts.poppins(fontWeight: FontWeight.w100);
final textExtraLight = GoogleFonts.poppins(fontWeight: FontWeight.w200);
final textLight = GoogleFonts.poppins(fontWeight: FontWeight.w300);
final text = GoogleFonts.poppins(fontWeight: FontWeight.w400);
final textMedium = GoogleFonts.poppins(fontWeight: FontWeight.w500);
final textSemiBold = GoogleFonts.poppins(fontWeight: FontWeight.w600);
final textBold = GoogleFonts.poppins(fontWeight: FontWeight.w700);
final textExtraBold = GoogleFonts.poppins(fontWeight: FontWeight.w800);
final textBlack = GoogleFonts.poppins(fontWeight: FontWeight.w900);

const InputDecoration inputDecoration = InputDecoration(
  constraints: BoxConstraints(maxHeight: 30, minHeight: 30),
  contentPadding: EdgeInsets.fromLTRB(0, 8, 0, 8),
  border: InputBorder.none,
  focusedBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  enabledBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
  focusedErrorBorder: InputBorder.none,
);
