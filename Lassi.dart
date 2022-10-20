import 'package:flutter/material.dart';
import 'package:milk_n_more/Cart.dart';
import 'package:milk_n_more/My_orders.dart';
import 'package:milk_n_more/homepage.dart';

class Lassi extends StatefulWidget {
  const Lassi({Key? key}) : super(key: key);

  @override
  State<Lassi> createState() => _LassiState();
}

class _LassiState extends State<Lassi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        /*leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => homepage()));
          },
        ),*/
        title: Text(
          'Lassi',
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
                  "images/image6.jpg",
                  height: 350,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                ' Sweet Lassi',
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
                'Help  in Digestive System,  Prevents stomach \n problem.',
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
                '₹35 /250ml',
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
                      MaterialPageRoute(builder: (context) => My_orders()));
                },
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
