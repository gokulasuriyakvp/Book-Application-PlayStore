import 'package:flutter/material.dart';
import 'package:flutter_four_hour_work_week_book/company_profile.dart';
import 'package:flutter_four_hour_work_week_book/personal_profile_screen.dart';
import 'package:flutter_four_hour_work_week_book/pv_quotes_text.dart';
import 'package:flutter_four_hour_work_week_book/pv_theme_text.dart';
import 'package:flutter_four_hour_work_week_book/pv_word_text.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Tim ferriss'),
              accountEmail: Text('Version 1.0'),
              currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/trims feriss.jpg'
                    ''),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/book background image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: const Text('Quotes'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PageViewQuotesText()));
              },
            ),
            ListTile(
              title: const Text('Themes'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PageViewThemeText()));
              },
            ),
            ListTile(
                title: const Text('Words'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => PageViewWordText()));
                }
            ),
            ListTile(
              title: Text(
                'Personal Profile',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => PersonalProfile()));
              },
            ),
            ListTile(
              title: Text(
                ''
                    'Company Profile',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => CompanyProfile()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
