import 'package:flutter/material.dart';
import 'package:myproject/module_4/61.dart';
import 'package:myproject/module_4/61_card.dart';

class my61_bottom extends StatefulWidget {
  const my61_bottom({super.key});

  @override
  State<my61_bottom> createState() => _my61_bottomState();
}

class _my61_bottomState extends State<my61_bottom> {
  var index1 = 0;

  onchange(value) {
    setState(() {
      index1 = value;
    });
  }

  List<Widget> myscreen = [my61(), my61_card(), my61()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myscreen.elementAt(index1),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.purple,
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.store),
              backgroundColor: Colors.teal,
              label: 'Card'),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Your order',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // SizedBox(width: 250,),
                                  Icon(Icons.sim_card_download)
                                ],
                              ),
                              Divider(
                                thickness: 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Chiken burger',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '250g',
                                        style: TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                  Text('\$ 7.00')
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Avacado salad',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        '350g',
                                        style: TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                  Text('\$ 12.00')
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Divider(
                                thickness: 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.grey),
                                  ),
                                  Text(
                                    '\$19.00',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(height: 30,),
                              SizedBox(
                                width: 400,
                                height: 50,
                                child: ElevatedButton(onPressed: (){}, child: Text('Add to card',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),),)
                            ],
                          ),
                        );
                      });
                },
                icon: Icon(Icons.account_box),
              ),
              // Icon(Icons.abc),
              backgroundColor: Colors.pink,
              label: 'Account'),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: index1,
        onTap: onchange,
      ),
    );
  }
}
