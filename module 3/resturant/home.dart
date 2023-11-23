import 'package:flutter/material.dart';
import 'package:myproject/module%203/resturant/detail.dart';

class Contain2 extends StatelessWidget {
  final Text? txt;
  final Color? color;
  Contain2({
    required this.txt,
    this.color=Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    // The method name should be 'build'
    return Container(
      height: 40,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: color),
      child: Center(child: txt),
    );
  }
}

class myitem extends StatelessWidget {
  final ImageProvider img;
  final Text titletxt;
  final Text subtitle;

  myitem({
    required this.img,
    required this.titletxt,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        // color: Colors.white,
        height: 100,
        width: 500,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Center(
          child: ListTile(
            leading: CircleAvatar(
              // radius: 50,
              backgroundImage: img,
            ),
            title: titletxt,
            subtitle: subtitle,
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          ),
        ),
      ),
    );
  }
}

class homeres extends StatefulWidget {
  const homeres({super.key});

  @override
  State<homeres> createState() => _homeresState();
}

class _homeresState extends State<homeres> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // appBar: AppBar(
      //   leading: CircleAvatar(
      //     radius: 5,
      //     backgroundColor: Colors.white,
      //     child: IconButton(
      //         onPressed: () {},
      //         icon: Icon(
      //           Icons.arrow_back,
      //           color: Colors.black,
      //         )),
      //   ),
      //   actions: [
      //     CircleAvatar(
      //         radius: 50,
      //         backgroundColor: Colors.white,
      //         child: IconButton(
      //             onPressed: () {},
      //             icon: Icon(
      //               Icons.search,
      //               color: Colors.black,
      //             )))
      //   ],
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text(
                'Restaurent',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              OutlinedButton(onPressed: () {}, child: Text('20-30min')),
              SizedBox(
                width: 20,
              ),
              Text(
                '2-3km',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Restaurant',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text(
                'Orange Sandwiches is delicious',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 150,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star_border,
                    color: Colors.yellow,
                  ),
                  label: Text(
                    '4.3',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Contain2(txt: 'mehul'),
                TextButton(
                    onPressed: () {},
                    child: Contain2(
                      color: Colors.yellow,
                        txt: Text('Recomended',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)))),

                TextButton(
                    onPressed: () {},
                    child: Contain2(
                        txt: Text('Popular',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)))),

                TextButton(
                    onPressed: () {},
                    child: Contain2(
                        txt: Text('Noodles',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)))),

                TextButton(
                    onPressed: () {},
                    child: Contain2(
                        txt: Text('pizza',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)))),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => mydetail())));
              },
              child: myitem(
                img: AssetImage('Assets/image/south.jpg'),
                // NetworkImage(
                //     'https://i.pinimg.com/originals/a2/bb/d5/a2bbd55e26b31e5157b770d5e5292c0d.jpg'),
                titletxt: Text(
                  'South Plate',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('s14'),
              )),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => mydetail())));
              },
              child: myitem(
                  img: AssetImage('Assets/image/pizza.jpg'),
                  titletxt: Text('Pizza'),
                  subtitle: Text('no.1 in sales'))),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => mydetail())));
              },
              child: myitem(
                  img: AssetImage('Assets/image/pizza.jpg'),
                  titletxt: Text('Pizza'),
                  subtitle: Text('no.1 in sales'))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
