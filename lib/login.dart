import 'package:flutter/material.dart';
import 'location.dart';
import 'reg_log.dart';

class LoginPage extends StatelessWidget {
  String Email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/rwazi.jpg'),
              ),
              Text(
                'rwazi ltd',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Center(
                child: TextFormField(
                  onChanged: (val) {
                    setState(() => Email = val);
                  },
                  decoration: new InputDecoration(labelText: 'Email'),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: TextFormField(
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                  obscureText: true,
                  decoration: new InputDecoration(labelText: 'Password'),
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Location(),
                              ));
                        },
                        child: new Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(15)),
                          child: new Text(
                            'Login',
                            style: new TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Source Sans Pro',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegistrationLog(),
                              ));
                        },
                        child: new Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(15)),
                          child: new Text(
                            'Sign Up',
                            style: new TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Source Sans Pro',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void setState(String Function() param0) {}
