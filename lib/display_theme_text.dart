import 'package:flutter/material.dart';
import 'package:flutter_four_hour_work_week_book/data_theme_list.dart';

class DisplayThemeText extends StatelessWidget {

  final ThemeList appData;

  const DisplayThemeText({Key? key, required this.appData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
        style: TextStyle(
          color: Colors.white,
          fontSize: 22.0,
          letterSpacing: 2.5,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Center(
              child: Text(
                appData.theme,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
