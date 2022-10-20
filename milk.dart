import 'package:flutter/material.dart';
import 'package:milk_n_more/Cart.dart';
import 'package:milk_n_more/My_orders.dart';
import 'package:milk_n_more/homepage.dart';

import 'constants.dart';
import 'model/cartItem.dart';

class milk extends StatefulWidget {
  final int? index;

  const milk({Key? key, this.index}) : super(key: key);

  @override
  State<milk> createState() => _milkState();
}

class _milkState extends State<milk> {
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
          Constants.titles[widget.index!],
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => cart()));
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 35,
        ).copyWith(top: 20),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.asset(
                  'images/image${Constants.data[widget.index!]['index'] + 1}.jpg',
                  // "images/image1.jpg",
                  height: 350,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                Constants.data[widget.index!]['title'],
                // ' A2 Nutritional Cow\'s Milk ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black),
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
                Constants.data[widget.index!]['detail'],
                // 'Maintain A Healty Heart,More Vitamin E, Beta \n Carbonate and blood pressure healthy',
                style: TextStyle(fontSize: 15, color: Colors.black),
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
                '₹${Constants.data[widget.index!]['price']}/${Constants.data[widget.index!]['unit']}',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
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
                  Navigator.push(context,
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
                  if (cartNotifier.value
                      .any((element) => element.index == widget.index)) {
                    cartNotifier.value.firstWhere((element) {
                      if (element.index == widget.index) {
                        int? temp = element.quantity;
                        element.quantity = temp! + 1;
                      }
                      return true;
                    });
                  } else {
                    cartNotifier.value
                        .add(CartItem(index: widget.index, quantity: 1));
                  }
                  Navigator.push(
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
