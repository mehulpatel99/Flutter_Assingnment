import 'package:flutter/material.dart';

class bottom extends StatelessWidget {
  final ImageProvider img;
  final Text txt;
  bottom({required this.img, required this.txt});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: img,
          ),
          txt,
        ],
      ),
    );
  }
}

class mydetail extends StatefulWidget {
  const mydetail({super.key});

  @override
  State<mydetail> createState() => _mydetailState();
}

class _mydetailState extends State<mydetail> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                width: 400,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    )),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              height: 590,
              width: double.infinity,
              // color: Colors.grey[300],
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(50, 50),
                      topRight: Radius.elliptical(50, 50)),
                  color: Colors.grey[300]),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'South plate',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.watch_later_outlined,
                            color: Colors.blue,
                          ),
                          label: Text('50min')),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star_border,
                            color: Colors.amber,
                          ),
                          label: Text('4.5')),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.local_fire_department_outlined,
                            color: Colors.red,
                          ),
                          label: Text('225kcl')),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    width: 200,
                    // color: Colors.grey,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('s'),
                        Text(
                          '12',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          // color: Colors.amber,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.amber),
                          child: Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if (count > 0) {
                                        setState(() {
                                          count--;
                                        });
                                      }
                                    });
                                  },
                                  child: Text('-',style: TextStyle(color: Colors.black),)),
                              Text('$count',style: TextStyle(color: Colors.white),),
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      count++;
                                    });
                                  },
                                  child: Text('+',style: TextStyle(color: Colors.black),)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Ingredianta',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: bottom(
                              img: NetworkImage(
                                  'https://2.bp.blogspot.com/-5VKx64PG1ew/UGBlgSbbQhI/AAAAAAAABTg/2UJffdFphFs/s1600/Vegetable+Udon+Noodle+Bowl+2.jpg'),
                              txt: Text('Noodle'))),
                      TextButton(
                          onPressed: () {},
                          child: bottom(
                              img: NetworkImage(
                                  'https://natashaskitchen.com/wp-content/uploads/2020/01/Boiled-Eggs-8.jpg'),
                              txt: Text('Eggs'))),
                      TextButton(
                          onPressed: () {},
                          child: bottom(
                              img: NetworkImage(
                                  'https://rasoirani.com/wp-content/uploads/2020/04/masala-dosa.jpg'),
                              txt: Text('Dosa')))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'About',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                        'South Indian food is a diverse and flavorful cuisine that reflects the geography, culture, and history of the region.'),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('Assets/image/south.jpg'),
                  // Image.network(
                  //     'https://i.pinimg.com/originals/a2/bb/d5/a2bbd55e26b31e5157b770d5e5292c0d.jpg'),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text('$count',style: TextStyle(color: Colors.black),)),
        icon: Icon(Icons.shopping_bag_outlined,color: Colors.black,),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
