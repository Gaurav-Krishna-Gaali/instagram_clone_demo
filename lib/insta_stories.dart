import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Stories",
        style: new TextStyle(fontWeight: FontWeight.bold),
      ),
      new Row(
        children: <Widget>[
          new Icon(Icons.play_arrow),
          new Text(
            "Watch All",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      )
    ],
  );

  final stories = Expanded(
    child: new ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        var container = new Container(
          width: 60.0,
          height: 60.0,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(
                      'https://st.depositphotos.com/1724125/1373/v/950/depositphotos_13739151-stock-illustration-cartoon-astronaut.jpg'))),
        );
        return Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            container,
          ],
        );
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
          // stories,
        ],
      ),
    );
  }
}
