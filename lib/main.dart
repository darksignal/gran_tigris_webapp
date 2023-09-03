import 'package:flutter/material.dart';
import 'features/gran_tigris_webapp/presentation/pages/home.dart';
import 'features/gran_tigris_webapp/presentation/pages/about.dart';
import 'features/gran_tigris_webapp/presentation/pages/contact.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Future<ColorScheme> _colorScheme = ColorScheme.fromImageProvider(
  //    provider: Image.asset('asset/images/GT-Icon-512.png').image);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gran Tigris Sdn. Bhd.',
      themeMode: ThemeMode.light,
      theme: ThemeData(
          colorSchemeSeed: const Color.fromARGB(255, 151, 206, 181),
          //colorSchemeSeed: Colors.teal,
          //colorScheme: final (ColorScheme.fromImageProvider(provider: Image.asset('asset/images/GT-Icon-512.png').image)),
          useMaterial3: true),
      home: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            //leading: Builder(
            //  builder: (context) => IconButton(
            //    icon:
            //        const ImageIcon(AssetImage('asset/images/GT-Icon-512.png')),
            //    iconSize: 512,
            //    onPressed: () => Null,
            //  ),
            //),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "asset/images/GT-Icon-512.png",
                width: 500,
              ),
            ),

            title: Text('Gran Tigris Sdn. Bhd.'),
            //backgroundColor: Theme.of(context).colorScheme.primary,
            //foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.info), text: 'About'),
              Tab(icon: Icon(Icons.contact_page), text: 'Contact'),
            ]),
          ),
          body: TabBarView(
            children: [
              Center(child: MyHomePage(title: 'Gran Tigris Sdn. Bhd.')),
              Center(child: AboutPage()),
              Center(child: ContactPage())
            ],
          ),
        ),
      ),
    );
  }
}
