import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // SEO optimization (meta tags)
    // Monitoring and analytics (track pageview)

    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _messageController,
                maxLines: 4,
                decoration: InputDecoration(labelText: 'Message'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle form submission and email sending (security considerations)
                },
                child: Text('Send Message'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
