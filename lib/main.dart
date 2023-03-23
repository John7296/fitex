import 'package:fitex/screens/root.dart';
import 'package:fitex/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
    await Hive.openBox('selectedItems');

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: kAccentMaterialColor, fontFamily: kFontFamily),
      home: Root(),
    ),
  );
}
