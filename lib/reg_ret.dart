import 'package:flutter/material.dart';
import 'location.dart';

class RegistrationRet extends StatelessWidget {
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
//              Text(
//                'rwazi ltd',
//                style: TextStyle(
//                  fontFamily: 'Pacifico',
//                  fontSize: 40,
//                  color: Colors.white,
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
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

              new DropdownButton<String>(
                hint: Text('District'),
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
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              DropdownButton<String>(
                hint: Text('Outlet Name'),
                items: <String>['Coca-Cola', 'Pepsi', 'Mauvilac', 'Permoglaz']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              DropdownButton<String>(
                hint: Text('Outlet Type'),
                items: <String>['Soft Drinks', 'Paint'].map((String value) {
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
                        child: new Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.circular(15)),
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
