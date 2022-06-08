import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff222222),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                backgroundImage: const AssetImage('images/profile.png'),
              ),
              const SizedBox(height: 10),
              const Text(
                "Shayboniyshoh",
                style: TextStyle(
                  fontFamily: 'Cutive Mono',
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              const Text(
                "Flutter Developer",
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.lightBlueAccent,
                  fontSize: 24,
                  letterSpacing: 3,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(color: Colors.grey[700]),
              ),
              Card(
                color: const Color(0xff444444),
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 45,
                ),
                child: ListTile(
                  onTap: () async {
                    final Uri launchUri =
                        Uri(scheme: 'tel', path: "+998901421802");
                    if (await canLaunchUrl(launchUri)) {
                      await launchUrl(launchUri);
                    }
                  },
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 24,
                  ),
                  leading: const Icon(
                    Icons.phone,
                    size: 20,
                    color: Colors.white,
                  ),
                  title: const Text(
                    '+998 (90) 142-18-02',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Card(
                color: const Color(0xff444444),
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 45,
                ),
                child: ListTile(
                  onTap: () async {
                    final Uri launchUri = Uri(
                        scheme: 'mailto',
                        path: "Shayboniyshohabduvaliev@gmail.com");
                    if (await canLaunchUrl(launchUri)) {
                      await launchUrl(launchUri);
                    }
                  },
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 24,
                  ),
                  leading: const Icon(
                    Icons.email_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Shayboniyshohabduvaliev',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
