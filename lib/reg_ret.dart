import 'package:flutter/material.dart';
import 'location.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationRet(),
    );
  }
}

class RegistrationRet extends StatefulWidget {
  @override
  _RegistrationRetState createState() => _RegistrationRetState();

//  _QRViewExampleState createStates() => _QRViewExampleState();
}

class _RegistrationRetState extends State<RegistrationRet> {
  String _myActivity;
  String _myActivityResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivityResult = _myActivity;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Retailer Registration')),
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: DropDownFormField(
                  titleText: 'Mapping Area',
                  hintText: 'Please choose one',
                  value: _myActivity,
                  onSaved: (value) {
                    setState(() {
                      _myActivity = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _myActivity = value;
                    });
                  },
                  dataSource: [
                    {
                      "display": "Flacq",
                      "value": "Flacq",
                    },
                    {
                      "display": "Grand Port",
                      "value": "Grand Port",
                    },
                    {
                      "display": "Moka",
                      "value": "Moka",
                    },
                    {
                      "display": "Pamplemouse",
                      "value": "Pamplemouse",
                    },
                    {
                      "display": "Plaine Wilhems",
                      "value": "Plaine Wilhems",
                    },
                    {
                      "display": "Port Louis",
                      "value": "Port Louis",
                    },
                    {
                      "display": "Riviere du Rempart",
                      "value": "Riviere du Rempart",
                    },
                    {
                      "display": "Riviere Noire",
                      "value": "Riviere Noire",
                    },
                    {
                      "display": "Savanne",
                      "value": "Savanne",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: DropDownFormField(
                  titleText: 'Outlet Name',
                  hintText: 'Please choose one',
                  value: _myActivity,
                  onSaved: (value) {
                    setState(() {
                      _myActivity = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _myActivity = value;
                    });
                  },
                  dataSource: [
                    {
                      "display": "Coca Cola",
                      "value": "Coca Cola",
                    },
                    {
                      "display": "Pepsi",
                      "value": "Pepsi",
                    },
                    {
                      "display": "Permoglaze",
                      "value": "Permoglaze",
                    },
                    {
                      "display": "Mauvilac",
                      "value": "Mauvilac",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: DropDownFormField(
                  titleText: 'Outlet Type',
                  hintText: 'Please choose one',
                  value: _myActivity,
                  onSaved: (value) {
                    setState(() {
                      _myActivity = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _myActivity = value;
                    });
                  },
                  dataSource: [
                    {
                      "display": "Soft Drinks",
                      "value": "Soft Drinks",
                    },
                    {
                      "display": "Paint",
                      "value": "Paint",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RaisedButton(
                  child: Text('Save'),
                  onPressed: _saveForm,
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Text(_myActivityResult),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 50, right: 50, top: 50),
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
//
//class _QRViewExampleState extends State<RegistrationRet> {
//  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//  var qrText = "";
//  QRViewController controller;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Column(
//        children: <Widget>[
//          Expanded(
//            flex: 5,
//            child: QRView(
//              key: qrKey,
//              onQRViewCreated: _onQRViewCreated,
//            ),
//          ),
//          Expanded(
//            flex: 1,
//            child: Center(
//              child: Text('Scan result: $qrText'),
//            ),
//          )
//        ],
//      ),
//    );
//  }
//
//  void _onQRViewCreated(QRViewController controller) {
//    this.controller = controller;
//    controller.scannedDataStream.listen((scanData) {
//      setState(() {
//        qrText = scanData;
//      });
//    });
//  }
//
//  @override
//  void dispose() {
//    controller?.dispose();
//    super.dispose();
//  }
//}
