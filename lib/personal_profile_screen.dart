import 'package:flutter/material.dart';
import 'package:flutter_four_hour_work_week_book/drawer_navigation.dart';




class PersonalProfile extends StatelessWidget {
  const PersonalProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DrawerNavigation(),
      appBar: AppBar(
        title: Text('Personal Profile',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            )),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Gokula Suriya Selvaraj',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.all(5.0),
                child:Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(padding:const EdgeInsets.all(8.0),
                child:SizedBox(
                  height: 60,
                  width: 200,
                  child: Divider(
                    color: Colors.blue,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  title: Text(
                    '+91 76049 01736',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.blue,
                    ),
                    title: Text('gokulasuriya.kvp@gamil.com',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
