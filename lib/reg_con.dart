import 'package:flutter/material.dart';
import 'location.dart';

class RegistrationCon extends StatefulWidget {
  @override
  RegistrationConState createState() {
    return new RegistrationConState();
  }
}

class RegistrationConState extends State<RegistrationCon> {
  final List<String> _dropdownValues = [
    'Flaq',
    'Grand Port',
    'Moka',
    'Pamplemouse',
    'Plaine Wilhems',
    'Port Louis',
    'Riviere du Rempart',
    'Riviere Noire',
    'Savanne'
  ]; //The list of values we want on the dropdown
  String _currentlySelected = ""; //var to hold currently selected value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumer Registration'),
      ),
      //display currently selected item on dropdown
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Name'),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Contact Number'),
          ),
          Text(_currentlySelected),
          SizedBox(
            height: 20.0,
          ),
          DropdownButton(
            //map each value from the lIst to our dropdownMenuItem widget
            items: _dropdownValues
                .map((value) => DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    ))
                .toList(),
            onChanged: (String value) {
              //once dropdown changes, update the state of out currentValue
              setState(() {
                _currentlySelected = value;
              });
            },
            //this wont make dropdown expanded and fill the horizontal space
            isExpanded: false,
            //make default value of dropdown the first value of our list
            value: _dropdownValues.first,
          ),
          SizedBox(
            height: 20.0,
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
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
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
      )),
    );
  }
}
