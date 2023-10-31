import 'package:flutter/material.dart';
import 'package:niles_custom_app/home_screen.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      //
          //TEXT THEMES
        //
        textTheme: TextTheme(
            //Body Small
            bodySmall:
                GoogleFonts.metrophobic(fontSize: 14, color: Color(0xffABB4BD)),
            //Body Medium
            bodyMedium: GoogleFonts.roboto(
                fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
            //
            //Body Large
            bodyLarge: GoogleFonts.dmSans(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700),
            //title Medium
            titleMedium: GoogleFonts.montserrat(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700),
        ),

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Home(
        
      ),
    );
  }
}
