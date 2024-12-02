import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Optional: Removes the debug banner
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.webp'),
              fit: BoxFit.cover,
            ),
          ),
          child: const SafeArea(
            child: ProfileScreen(),
          ),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/image.jpg'),
          radius: 70.0,
        ),
        Text(
          'Zurick Lanz D. Sayson',
          style: TextStyle(
            fontFamily: 'Sunshiney',
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 300.0,
          child: Divider(
            thickness: 5.0,
            color: Colors.black,
          ),
        ),
        Text(
          'Computer Engineering Student',
          style: TextStyle(
            fontFamily: 'Sunshiney',
            fontSize: 20.0,
            fontWeight: FontWeight.w100,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 100.0,
          child: Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
        ),
        Text(
          '3rd Year',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 20.0,
            fontWeight: FontWeight.w100,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 100.0,
          child: Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
        ),
        Text(
          '20 yrs old',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 20.0,
            fontWeight: FontWeight.w100,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 100.0,
          child: Divider(
            thickness: 1.0,
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: () => _launchURL('https://www.facebook.com/profile.php?id=100072300454691'),
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: ListTile(
                leading: Icon(
                  Icons.facebook,
                  color: Colors.teal,
                ),
                title: Text(
                  'Facebook',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => _launchURL('https://www.instagram.com/zsayson_03/'),
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: ListTile(
                leading: Icon(
                  Icons.photo,
                  color: Colors.teal,
                ),
                title: Text(
                  'Instagram',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}