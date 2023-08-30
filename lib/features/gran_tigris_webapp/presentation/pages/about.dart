import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    // SEO optimization (meta tags)
    // Monitoring and analytics (track pageview)

    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'About Gran Tigris Sdn. Bhd.',
              style: TextStyle(fontSize: 24),
            ),
            // Add content about your company here
          ],
        ),
      ),
    );
  }
}
