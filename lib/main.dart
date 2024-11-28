import 'package:go_amigo/export.dart';

void main() => runApp(const GoAmigo());

class GoAmigo extends StatefulWidget {
  const GoAmigo({super.key});

  @override
  State<GoAmigo> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GoAmigo> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
    });
  }
}
