import 'package:flutter/material.dart';

import 'Cart.dart';
import 'My_orders.dart';
import 'homepage.dart';

class Dahi extends StatefulWidget {
  const Dahi({Key? key}) : super(key: key);

  @override
  State<Dahi> createState() => _DahiState();
}

class _DahiState extends State<Dahi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => homepage()));
          },
        ),*/
        centerTitle: true,
        title: Text(
          'Dahi',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 35,
        ).copyWith(top: 20),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.asset(
                  "images/image7.jpg",
                  height: 350,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Natural Dahi',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Help  for  facial skin, for stronger bones and \n teeth ',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '₹15 /50g',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               GestureDetector(
                 onTap: () {
                   Navigator.pushReplacement(context,
                       MaterialPageRoute(builder: (context) => My_orders()));   },
                 child: Container(
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Colors.blueGrey.shade100),
                   padding: EdgeInsets.symmetric(
                     horizontal: 35,
                     vertical: 25,
                   ),
                   child: Text(
                     'Order Now',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 16,
                     ),
                   ),
                 ),
               ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => cart()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.cyanAccent,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 25,
                  ),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
