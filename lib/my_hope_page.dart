import 'package:flutter/material.dart';
import 'package:flutter_workshop/bottom_border_button.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
                'https://secure.meetupstatic.com/photos/event/e/9/4/4/highres_484139716.jpeg'),
            Text(
              'Image title',
              style: TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic),
            ),
            Text(
                'This is the image description and is going to be longer than the title but it will have a smaller font.'),
            Text('Comments:', style: TextStyle(fontSize: 12.0)),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  BottomBorderButton(icon: Icons.favorite_border, text: 'Like'),
                  BottomBorderButton(icon: Icons.comment, text: 'Comment'),
                  BottomBorderButton(icon: Icons.share, text: 'Share'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
