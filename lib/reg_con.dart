import 'package:flutter/material.dart';
import 'location.dart';

class RegistrationCon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('images/rwazi.jpg'),
              ),
              Text(
                'Registration Form',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 250,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(labelText: 'Name'),
                ),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Contact Number'),
              ),
              DropdownButton<String>(
                hint: Text('Mapping Country'),
                items: <String>['Mauritius', 'Africa', 'Rodrigues']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              DropdownButton<String>(
                hint: Text('Mapping Area'),
                items: <String>[
                  'Flaq',
                  'Grand Port',
                  'Moka',
                  'Pamplemouse',
                  'Plaine Wilhems',
                  'Port Louis',
                  'Riviere du Rempart',
                  'Riviere Noire',
                  'Savanne'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              DropdownButton<String>(
                hint: Text('Are you Employed'),
                items: <String>['No', 'Yes'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              Row(
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
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            'Register',
                            style: TextStyle(
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
