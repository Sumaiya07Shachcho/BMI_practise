import 'package:flutter/material.dart';

class MyRRRPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: ListView(
          children: [
            ListTile(
              leading: Image(image: AssetImage('images/RRR.jpg')),
              title: const Text('RRR'),
              subtitle: Text('IMBD: 7.8/10'),
            ),
            GridView.count(
              crossAxisCount: 4,
              children: [
                Icon(Icons.facebook),
                Icon(Icons.share),
                Icon(Icons.inbox),
                Icon(Icons.mail),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
            )

            /* Column(
          children: [
            Image(image: AssetImage('images/dabbe.jpg')),
            
            Row(children: [

            
             Text("Dabbe",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 75,
             ),
             ),
              Text("IMBD: 6.8/10",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 55,
             ),
             ),
              Text("Release Date: 03-02-2013",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 75,
             ),
             )
            ],
              
            )

            

            
          ],
        )*/
          ],
        ));
  }
}
