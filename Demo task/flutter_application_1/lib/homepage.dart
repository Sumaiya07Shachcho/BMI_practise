import 'package:flutter/material.dart';
import 'dabbe.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 750,
      mainAxisSpacing: 100,
      crossAxisSpacing: 150,
      children: [
        Image(
          image: AssetImage('images/dabbe.jpg'),
          /*onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  MyDabbePage()),
  );
}*/
        ),
        Image(image: AssetImage('images/RRR.jpg')),
        Image(image: AssetImage('images/GOT.jpg')),
        Image(image: AssetImage('images/siccin.jpg')),
      ],
    );
  }
}
