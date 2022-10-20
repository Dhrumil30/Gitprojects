import 'package:flutter/material.dart';
import 'package:milk_n_more/Address.dart';
import 'package:milk_n_more/Cart.dart';
import 'package:milk_n_more/homepage.dart';

import 'My_orders.dart';
import 'SignIn.dart';
import 'SignUp.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,

      appBar: AppBar(
        /*leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => homepage()));
          },
        ),*/
        centerTitle: true,
        title: Text('Account'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => My_orders()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  Icon(Icons.shopping_bag),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'My Orders',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => cart()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  Icon(Icons.add_shopping_cart),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Cart',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // GestureDetector(
          //   onTap: () {},
          //   child: Container(
          //     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          //     decoration: BoxDecoration(
          //         color: Colors.white, borderRadius: BorderRadius.circular(40)),
          //     child: Row(
          //       children: [
          //         Icon(Icons.add_circle_outline),
          //         SizedBox(
          //           width: 15,
          //         ),
          //         Text(
          //           'Wishlist',
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 20,
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Address()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          //   decoration: BoxDecoration(
          //       color: Colors.white, borderRadius: BorderRadius.circular(40)),
          //   child: Row(
          //     children: [
          //       Icon(Icons.star),
          //       SizedBox(
          //         width: 15,
          //       ),
          //       Text(
          //         'Ratings',
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 20,
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  Icon(Icons.help),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Help',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => SignIn()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'logout',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
