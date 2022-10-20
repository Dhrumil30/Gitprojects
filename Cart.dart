import 'package:flutter/material.dart';
import 'package:milk_n_more/homepage.dart';
import 'package:milk_n_more/profile.dart';

import 'My_orders.dart';
import 'constants.dart';
import 'model/cartItem.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  int totalItems = 0, totalAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'My Shopping  Cart',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ValueListenableBuilder(
          valueListenable: cartNotifier,
          builder: (context, List<CartItem> value, child) {
            totalItems = 0;
            for (var item in value) {
              totalItems += item.quantity!;
            }

            totalAmount = 0;
            for (var item in value) {
              totalAmount += ((Constants.data[item.index!]['price'] as int) *
                  item.quantity!);
            }
            return Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    itemCount: value.length,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 12,
                    ).copyWith(top: 20),
                    itemBuilder: (_, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 1),
                        ),
                        child: ListTile(
                          title: Text(
                            Constants.titles[value[index].index!],
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (value[index].quantity == 1) {
                                      value.removeAt(index);
                                    } else {
                                      value[index].quantity =
                                          value[index].quantity! - 1;
                                    }
                                  });
                                },
                                splashRadius: 20,
                                icon: Icon(Icons.remove),
                              ),
                              Text(
                                '${value[index].quantity!}',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    value[index].quantity =
                                        value[index].quantity! + 1;
                                  });
                                },
                                splashRadius: 20,
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                          /*trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                value.removeAt(index);
                              });
                            },
                            icon: Icon(Icons.delete_forever),
                          ),*/
                        ),
                      );
                    },
                    separatorBuilder: (_, i) => const SizedBox(height: 5),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue, Colors.blueAccent,
                      ]
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Items in your cart: $totalItems',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  /*padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),*/
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homepage()),
                                (_) => false);
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 14.0),
                            shape: RoundedRectangleBorder(
                                // borderRadius: BorderRadius.circular(10),
                                ),
                          ),
                          child: Text(
                            'Shop more',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const My_orders()));
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 14.0),
                            shape: RoundedRectangleBorder(
                                // borderRadius: BorderRadius.circular(10),
                                ),
                          ),
                          child: Text(
                            'Proceed to pay: ₹$totalAmount',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ));
  }
}
