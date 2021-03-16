import 'package:dogehouse_flutter/provider/doge_provider.dart';
import 'package:dogehouse_flutter/screens/home/home_screen.dart';
import 'package:dogehouse_flutter/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF0c0e11),
      statusBarColor: Color(0xFF0c0e11),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light));
  runApp(DogeHouseApp());
}

class DogeHouseApp extends StatefulWidget {
  @override
  _DogeHouseAppState createState() => _DogeHouseAppState();
}

class _DogeHouseAppState extends State<DogeHouseApp> {
  var dogeProvider = new DogeProvider();

  @override
  void initState() {
    //dogeProvider.connectWS();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DogeProvider>(
      create: (_) => dogeProvider,
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xFFfc4e4c),
          backgroundColor: Color(0xFF151a21),
          scaffoldBackgroundColor: Color(0xFF0c0e11),
        ),
        home: LoginScreen(),
      ),
    );
  }
}
