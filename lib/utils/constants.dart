import 'package:flutter/material.dart';

const bool kDedebug = true;

//FONT BOLD
const dynamic kFontWeight_M = FontWeight.w500;
const dynamic kFontWeight_SB = FontWeight.w700;
const dynamic kFontWeight_B = FontWeight.w900;

//FONT SIZES
const double kFontSize_16 = 16;
const double kFontSize_14 = 14;

//FONT FAMILY
const String kFontFamily = "Poppins";

// COLOUR
const kPrimaryColor = Color(0xffFFFFFF);
const kAccentColor = Color(0xFF282A2C);
const kBackgroundColor = Color(0xffFFFFFF);
const kButtonColorR = Color(0xffF41937);
const kAppBar = Color(0xff1e2021);
const kGreenColor = Color(0xff179F0B);
const kGreyColor = Color(0xffD9D9D9);
const kGreyColorTxt = Color(0xff95969D);
const kSearchfieldColor = Color(0xffF2F2F3);

Map<int, Color> accentColor = {
  50: Color(0xFFE2E2E2),
  100: Color(0xFFC5C5C5),
  200: Color(0xFFABABAB),
  300: Color(0xFF919191),
  400: Color(0xFF787878),
  500: Color(0xFF5E5E5E),
  600: Color(0xFF525252),
  700: Color(0xFF464646),
  800: Color(0xFF3A3A3A),
  900: Color(0xFF2F2F2F),
};

MaterialColor kAccentMaterialColor = MaterialColor(0xff282a2c, accentColor);
