import 'package:flutter/material.dart';
import 'package:milk_n_more/homepage.dart';
import 'package:milk_n_more/profile.dart';

class My_orders extends StatefulWidget {
  const My_orders({Key? key}) : super(key: key);

  @override
  State<My_orders> createState() => _My_ordersState();
}

class _My_ordersState extends State<My_orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'My Orders',
            style: TextStyle(color: Colors.white),
          ),
          /*leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => profile()));
              }),*/
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 14,
          ).copyWith(top: 30),
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.cyanAccent,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 35,
                vertical: 25,
              ),
              child: Text(
                'Congratulation',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Your order has been placed soon it will delivery.',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            color: Colors.cyanAccent.shade200,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Expanded(
            child: Row(
              children: [
                // IconButton(
                //   icon: Icon(Icons.search),
                //   onPressed: () {
                //     showSearch(
                //         context: context, delegate: CustomSearchDelegate());
                //   },
                // ),
                Text(
                  'Payment mode is cash on \n delivery',
                  style: TextStyle(
                    fontSize: 20.00,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.blueAccent.shade100,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'Total bill will be given by delivery guy,\n GST included.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'For any enquire or help ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Helpline number ',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Text(' 9099666580, ',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
            Text(' 7016717974',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)


            ]));
  }
}
