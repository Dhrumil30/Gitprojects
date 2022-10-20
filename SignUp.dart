// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:milk_n_more/homepage.dart';

import 'Preferences.dart';
import 'SignIn.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confpassController = new TextEditingController();
  // FirebaseAuth? auth;

  @override
  void initState() {
    super.initState();
    // auth = FirebaseAuth.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade700, Colors.cyan],
              ),
            ),
            height: 250,
          ),
          Column(
            children: [
              Container(height: 130),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15)),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 130,
            padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 30),
            alignment: Alignment.centerLeft,
            child: Text(
              'Create Account',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            children: [
              Container(height: 130),
              Expanded(
                child: Form(
                  key: _formKey,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    physics: BouncingScrollPhysics(),
                    children: [
                      Text(
                        'New User',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Hello there, sign up to Continue',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          border: UnderlineInputBorder(),
                          labelText: 'Name',
                        ),
                        controller: nameController,
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          } else if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(emailController.text)) {
                            return 'Enter valid email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          border: UnderlineInputBorder(),
                          labelText: 'Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                      ),

                      SizedBox(height: 16),
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          } else if (value.length < 6) {
                            return 'Password should be minimum of 6 character';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          border: UnderlineInputBorder(),
                          labelText: 'Password',
                        ),
                        controller: passwordController,
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          } else if (value != passwordController.text) {
                            return 'Password does not match';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          border: UnderlineInputBorder(),
                          labelText: 'Confirm Password',
                        ),
                        controller: confpassController,
                      ),
                      SizedBox(height: 36),
                      TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _register();
                            print("Validation successful");
                          } else {
                            print("Validation failed");
                          }
                        },

                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue.shade600),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(vertical: 12)),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              height: 1,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'OR',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homepage()));
                        },
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.grey.shade200),
                          side: MaterialStateProperty.all(BorderSide(
                              color: Colors.grey.shade300, width: 1.5)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(vertical: 12)),
                        ),
                        child: Text(
                          'Sign In',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _register() async {
    /*FirebaseFirestore db = FirebaseFirestore.instance;
    try {
      final User? user = (await auth?.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      ))!
          .user;
      FocusManager.instance.primaryFocus?.unfocus();

      showLoading();
      if (user != null) {
        final user = <String, dynamic>{
          "name": nameController.text.trim(),
          "email": emailController.text.trim(),
          "pass": passwordController.text.trim(),
        };

        int userId = 0;
        db.collection("users").get().then((value) {
          int listSize = value.docs.length;
          setState(() {
            userId = listSize + 1;
            user['userId'] = '$userId';
          });
          db.collection("users").doc('${listSize + 1}').set(user);
        }).whenComplete(() {
          setBoolPrefs(Preference.LoginPref, true);
          setStringPrefs(Preference.EmailPref, emailController.text.trim());
          setStringPrefs(Preference.NamePref, nameController.text.trim());
          setStringPrefs(Preference.UserIdPref, '$userId');

          //(Route<dynamic> route) => false - This will remove all widgets in the navigation tree
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => ChatList()),
              (Route<dynamic> route) => false);
        });
      } else {
        setState(() {
          // _success = true;
        });
      }
    } catch (e) {
      print("Error: $e");
      if (e is FirebaseAuthException) {
        if (e.code == 'email-already-in-use') {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('User already exists, Try Logging in!')));
        } else if (e.code == 'invalid-email') {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Invalid email address!')));
        }
      }
    }*/
  }

  showLoading() {
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        builder: (context) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  color: Colors.blue,
                ),
                SizedBox(width: 20),
                Text(
                  'Please wait...',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
