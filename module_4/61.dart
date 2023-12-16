import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class my61 extends StatefulWidget {
  const my61({super.key});

  @override
  State<my61> createState() => _my61State();
}

List image = [
  Image.asset('Assets/image/pizza.jpg'),
  Image.asset('Assets/image/burger.jpg'),
  Image.asset('Assets/image/momos.jpg'),
  Image.asset('Assets/image/chinese.jpg'),
];

List gridname = ['Pizza', 'Burger', 'Momos', 'Chinese'];
List price = ['\$13.0', '\$15.4', '\$20.0', '\$13.4'];

class _my61State extends State<my61> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.telegram))
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                myname('Indian', Colors.white),
                myname('Italic', Colors.yellow),
                myname('Chinese', Colors.white),
                myname('Spanish', Colors.white),
                myname('Gujarati', Colors.white),
                myname('Rajasthani', Colors.white),
                myname('Punjabi', Colors.white),
                myname('Russian', Colors.white)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  btmtxt(name2: 'All', clr: Colors.black, fnt: FontWeight.bold),
                  btmtxt(name2: 'Pizza', clr: Colors.grey),
                  btmtxt(name2: 'Burger', clr: Colors.grey),
                  btmtxt(name2: 'Chowmin', clr: Colors.grey),
                  btmtxt(name2: 'Momos', clr: Colors.grey),
                  btmtxt(name2: 'Shakes', clr: Colors.grey),
                  btmtxt(name2: 'Momos', clr: Colors.grey),
                  btmtxt(name2: 'Chinese', clr: Colors.grey),
                  btmtxt(name2: 'Momos', clr: Colors.grey),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: GridView.builder(
                itemCount: image.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12,bottom: 12),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: 200,
                            child: image[index],
                          ),
                          Text(gridname[index],style: TextStyle(fontSize: 25),),
                          RatingBarIndicator(
                            rating: 2.75,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 30.0,
                            direction: Axis.horizontal,
                          ),
                          
                           Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(price[index],style: TextStyle(fontSize: 20),),
                                Card(child: IconButton(onPressed: (){}, icon: Icon(Icons.add)),)
                              ],
                            ),
                          
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget myname(
    String? name,
    Color? clrname,
  ) {
    return Material(
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Card(
              color: clrname,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('$name'),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget btmtxt({
    name2,
    Color? clr,
    fnt,
  }) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          name2,
          style: TextStyle(color: clr, fontWeight: fnt),
        ),
      ),
    );
  }
}
