import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ai Hub Support',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ai Hub Support'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // Add functionality to send email
                  customLaunchUrlString('mailto:lucasmatheusdev@gmail.com');
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 8),
                    Text('Contact Us'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add functionality for sending feedback
                  // You can link to a feedback form or an email address
                  customLaunchUrlString('mailto:lucasmatheusdev@gmail.com');
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.feedback),
                    SizedBox(width: 8),
                    Text('Send Feedback'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () {
              //     // Add functionality to open WhatsApp
              //     customLaunchUrlString(
              //         'https://wa.me/+5511986965118'); // Replace with your WhatsApp number
              //   },
              //   child: const Row(
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       Icon(Icons.chat),
              //       SizedBox(width: 8),
              //       Text('Contact via WhatsApp'),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void customLaunchUrlString(String urlString) async {
    if (await canLaunchUrlString(urlString)) {
      launchUrlString(urlString);
    } else {
      throw 'Could not launch $urlString';
    }
  }
}
