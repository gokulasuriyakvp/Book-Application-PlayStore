import 'package:flutter/material.dart';
import 'package:flutter_four_hour_work_week_book/data_quotes_list.dart';
import 'package:flutter_four_hour_work_week_book/display_quotes_text.dart';
import 'package:flutter_four_hour_work_week_book/drawer_navigation.dart';
import 'package:share_plus/share_plus.dart';


class PageViewQuotesText extends StatefulWidget {
  const PageViewQuotesText({Key? key}) : super(key: key);

  @override
  State<PageViewQuotesText> createState() => _PageViewQuotesTextState();
}

class _PageViewQuotesTextState extends State<PageViewQuotesText> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        title: const Text('Quotes'),
        backgroundColor: Colors.blue,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text('Share'),
              ),
            ],
            elevation: 2,
            onSelected: (value) {
              if (value == 1) {
                _shareInfo();
              }
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 50.0),
            height: 250.0,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                controller: PageController(
                  viewportFraction: 0.7,
                ),
                itemCount: quotesList.length,
                itemBuilder: (context, index) {
                  var quotes = quotesList[index];
                  var _scale = _selectedIndex == index ? 1.0 : 0.8;
                  return TweenAnimationBuilder(
                      tween: Tween(begin: _scale, end: _scale),
                      duration: Duration(milliseconds: 350),
                      child: DisplayQuotesText(
                        appData: quotes,
                      ),
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value,
                          child: child,
                        );
                      });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: new Text(
                  (_selectedIndex + 1).toString() +
                      '/' +
                      quotesList.length.toString(),
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  _shareInfo() {
    print('--------->Share');
    Share.share(quotesList[_selectedIndex].quote);
    print(quotesList[_selectedIndex].quote);
  }
}
