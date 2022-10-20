import 'package:flutter/material.dart';
import 'package:milk_n_more/Butter.dart';
import 'package:milk_n_more/Butter_milk.dart';
import 'package:milk_n_more/Cheese.dart';
import 'package:milk_n_more/Lassi.dart';
import 'package:milk_n_more/ghee.dart';
import 'package:milk_n_more/profile.dart';

import 'Cart.dart';
import 'Dahi.dart';
import 'constants.dart';
import 'milk.dart';
import 'model/cartItem.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

ValueNotifier<List<CartItem>> cartNotifier = ValueNotifier([]);

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Milk&More',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person_outlined),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile()));
            },
          ),
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
          horizontal: 20,
          vertical: 14,
        ).copyWith(top: 20),
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    showSearch(
                        context: context, delegate: CustomSearchDelegate());
                  },
                ),
                Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 18.00,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            ' Top Categories',
            style: TextStyle(
              fontSize: 25.00,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 7,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.95,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return ListCard(index);
            },
          ),
          /*ListCard(onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => milk()));
            }, Colors.blue, 'Milk'),
            SizedBox(
              height: 10,
            ),
            ListCard(onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Butter_milk()));
            }, Colors.cyan, 'Butter Milk'),
            SizedBox(
              height: 10,
            ),
            ListCard(onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => ghee()));
            }, Colors.blue, 'Ghee'),
            SizedBox(
              height: 10,
            ),
            ListCard(onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Butter()));
            }, Colors.cyan, 'Butter'),
            SizedBox(
              height: 10,
            ),
            ListCard(onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Cheese()));
            }, Colors.blue, 'Cheese'),
            SizedBox(
              height: 10,
            ),
            ListCard(onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Lassi()));
            }, Colors.cyan, 'Lassi'),
            SizedBox(
              height: 10,
            ),
            ListCard(onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Dahi()));
            }, Colors.blue, 'Dahi'),
            SizedBox(
              height: 10,
            ),*/
        ],
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_sharp),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.drive_eta_outlined),
            label: 'Order details',
          ),
        ],
      ),*/
    );
  }

  Widget ListCard(int index, {VoidCallback? onTap}) {
    List<MaterialColor> colors = [
      Colors.lightBlue,
      Colors.cyan,
      Colors.indigo,
    ];
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => milk(index: index)));
        return;

        if (index == 0) {
          //Milk
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => milk(index: index)));
        } else if (index == 1) {
          //Butter Milk
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Butter_milk()));
        } else if (index == 2) {
          //Ghee
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ghee()));
        } else if (index == 3) {
          //Butter
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Butter()));
        } else if (index == 4) {
          //Cheese
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cheese()));
        } else if (index == 5) {
          //Lassi
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Lassi()));
        } else if (index == 6) {
          //Dahi
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Dahi()));
        }
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colors[index % colors.length].shade300,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'images/image${index + 1}.jpg',
                height: 110,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              Constants.titles[index],
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ],
        ),
        height: 180,
        width: 100,
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Milk",
    "Butter MiLk",
    "Ghee",
    "Butter",
    "Cheese",
    "Lassi"
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var products in searchTerms) {
      if (products.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(products);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text('milk'),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var products in searchTerms) {
      if (products.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(products);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text('milk'),
        );
      },
    );
  }
}
