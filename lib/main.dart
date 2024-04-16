import 'package:flutter/material.dart';
import 'package:policoncert/configuration/app_theme.dart';
import 'package:policoncert/screens/menu.dart';
import 'package:policoncert/screens/perfil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return MaterialApp(
      routes: {
        "/":(context) => HomeScreen(colors: colors),
        "/menu":(context) => const MenuScreen(),
        "/perfil":(context) =>  const PerfilScreen(),
        "/fotos":(context) => HomeScreen(colors: colors),
        "/videos":(context) => HomeScreen(colors: colors),
        "/web":(context) => HomeScreen(colors: colors),
        "/botones":(context) => HomeScreen(colors: colors) 
      },
      theme: AppTheme(colorSelected: 1).getThemeData(),
      debugShowCheckedModeBanner: false,
      title: 'policoncert',
    );
  }
}

//this is the home screen
class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.colors,
  });

  final ColorScheme colors;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child:  Text('POLICONCERT', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 45,
              color: Colors.black
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 380,
                height: 60,
                decoration: BoxDecoration(
                  color: widget.colors.secondary,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: TextButton(
                  onPressed: ()
                  {
                    setState(() {
                      Navigator.pushNamed(context, '/menu');
                    });
                  }, 
                  child: const Text('Bienvenido', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),)
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}