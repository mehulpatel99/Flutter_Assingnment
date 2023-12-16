import 'package:flutter/material.dart';

class my61_card extends StatefulWidget {
  const my61_card({super.key});

  @override
  State<my61_card> createState() => _my61_cardState();
}

class _my61_cardState extends State<my61_card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // leading: Icon(Icons.back_hand),
      // ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:50,top: 20 ),
              child: Text(
                'Card',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 20),
              child: Text(
                'Thu,6th of June',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text('+Add to Order'),
            ),
            mytile('Pizza', '- 2 -', 'Assets/image/pizza.jpg'),
             mytile('Burger', '- 4 -', 'Assets/image/burger.jpg'),
              mytile('Momos', '- 2 -', 'Assets/image/momos.jpg'),
               mytile('Chinese', '- 1 -', 'Assets/image/chinese.jpg'),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('Total',style: TextStyle(fontSize: 25,color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text('\$45.76',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 30,left: 100),
              child: SizedBox(
                height: 40,
                width: 300,
                child: ElevatedButton(onPressed: (){}, child: Text('Checkout',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[300]),),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget mytile(String? name, String? sbtitle, String? circle) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Card(
          child: ListTile(
            onTap: (){},
            leading: CircleAvatar(backgroundImage: AssetImage('$circle'),),
            title: Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text('$name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text('$sbtitle'),
            ),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          ),
        ),
      ),
    );
  }
}
