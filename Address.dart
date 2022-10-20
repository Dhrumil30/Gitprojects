import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:milk_n_more/homepage.dart';
import 'package:milk_n_more/profile.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController pincord = new TextEditingController();
  TextEditingController State = new TextEditingController();
  TextEditingController city = new TextEditingController();
  TextEditingController housenumber = new TextEditingController();
  TextEditingController Roadname = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        /*leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => profile()));
            }),*/
        title: Text('Address'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(
              // filled: true,
              labelText: 'name',
              border: UnderlineInputBorder(),
            ),
            controller: nameController,
          ),
          SizedBox(
            width: 10,
            height: 16,
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter some text';
              }
              return null;
            },
            decoration: InputDecoration(
              // filled: true,
              labelText: 'phone number',
              border: UnderlineInputBorder(),
            ),
            controller: phoneController,
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter pincord';
              }
              return null;
            },
            decoration: InputDecoration(
              // filled: true,
              labelText: 'pincord',
              border: UnderlineInputBorder(),
            ),
            controller: pincord,
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter State';
              }
              return null;
            },
            decoration: InputDecoration(
              // filled: true,
              labelText: 'State',
              border: UnderlineInputBorder(),
            ),
            controller: State,
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter City';
              }
              return null;
            },
            decoration: InputDecoration(
              // filled: true,
              labelText: 'City',
              border: UnderlineInputBorder(),
            ),
            controller: city,
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter City';
              }
              return null;
            },
            decoration: InputDecoration(
              // filled: true,
              labelText: 'House Number',
              border: UnderlineInputBorder(),
            ),
            controller: housenumber,
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter City';
              }
              return null;
            },
            decoration: InputDecoration(
              // filled: true,
              labelText: 'Road or near by place',
              border: UnderlineInputBorder(),
            ),
            controller: Roadname,
          ),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 25,
              ),
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
                // borderRadius: BorderRadius.circular(40)
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 130,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Save Address',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
