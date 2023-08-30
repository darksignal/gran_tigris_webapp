import 'package:flutter/material.dart';
import 'features/gran_tigris_webapp/presentation/pages/home.dart';
import 'features/gran_tigris_webapp/presentation/pages/about.dart';
import 'features/gran_tigris_webapp/presentation/pages/contact.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gran Tigris Sdn. Bhd.',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 151, 206, 181)),
          useMaterial3: true,
          primaryTextTheme: TextTheme(
            titleLarge: TextStyle(color: Colors.white),
          )),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Builder(
              builder: (context) => IconButton(
                icon:
                    const ImageIcon(AssetImage('asset/images/GT-Icon-512.png')),
                iconSize: 512,
                onPressed: () => Null,
              ),
            ),
            title: Text('Gran Tigris Sdn. Bhd.'),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            //foregroundColor: Theme.of(context).colorScheme.onPrimary,
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
