import 'package:flutter/material.dart';

class module1st extends StatelessWidget {
  const module1st({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Image'),
        leading: Icon(Icons.person_add_alt_1_outlined),
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'Assets/image/mountain2.jpg',
                      ),
                      fit: BoxFit.fill)),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Oaschimen lake campground',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 100,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Colors.red,
                    )),
                Text(
                  '42',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Kandersteg,Switzerland',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call,
                      size: 30,
                    ),
                    label: Text('call')),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.telegram,
                      size: 30,
                    ),
                    label: Text('Route')),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      size: 30,
                    ),
                    label: Text('Share')),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 400,
              // color: Colors.grey[200],
              child: Column(
                children: [
                  Text(
                      'Mountains are really very beautiful and refreshing landscape to look at. Speaking in the geographical terms, mountains are highly elevated part of land.'),
                Text('Although there is no commonly agreed average height, above which an elevation can be considered a mountain. But in general terms, an elevation above 1,000 meters from the mean sea level can be considered as a mountain.')
                ],
              ),
            )
          ]),
    );
  }
}
