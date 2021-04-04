import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kjsce_220_volts/models/preferences_service.dart';
import 'package:kjsce_220_volts/models/settings.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _preferencesService = PreferencesService();
  String _platformVersion = 'Unknown';

  final _nameController = TextEditingController();
  final _bloodGroupController = TextEditingController();
  final _vehicleBrandController = TextEditingController();
  final _vehicleModelController = TextEditingController();
  final _vehicleColorController = TextEditingController();
  final _addressController = TextEditingController();
  final _contactOneController = TextEditingController();
  final _contactTwoController = TextEditingController();
  final _contactThreeController = TextEditingController();

  String latitudeData = "";
  String longitudeData = "";

  @override
  void initState() {
    _populateFields();
    initPlatformState();
    getCurrentLocation();
    super.initState();
  }

  getCurrentLocation() async {
    final geoposition = await Geolocator().getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation);

    setState(() {
      latitudeData = '${geoposition.latitude}';
      longitudeData = '${geoposition.longitude}';
    });
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await FlutterOpenWhatsapp.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  void _populateFields() async {
    final settings = await _preferencesService.getSettings();
    setState(() {
      _nameController.text = settings.nameInput;
      _bloodGroupController.text = settings.bloodGroupInput;
      _vehicleBrandController.text = settings.vehicleBrandInput;
      _vehicleModelController.text = settings.vehicleModelInput;
      _vehicleColorController.text = settings.vehicleColorInput;
      _addressController.text = settings.addressInput;
      _contactOneController.text = settings.contactOne;
      _contactTwoController.text = settings.contactTwo;
      _contactThreeController.text = settings.contactThree;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('FORM')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                width: 200,
                child: Image.asset('assets/ambulance.png'),
              ),
            ),
            Container(
              child: Text(
                  'Following details will be sent to your closed ones \n and emergency services in the event of a crash'),
            ),
            SizedBox(height: 15.0),
            Container(
              // color: Colors.red,
              width: 380.0,
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    labelText: 'Name'),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              // color: Colors.red,
              width: 380.0,
              child: TextField(
                controller: _bloodGroupController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    labelText: 'Blood Group'),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              // color: Colors.red,
              width: 380.0,
              child: TextField(
                controller: _vehicleBrandController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    labelText: 'Vehicle Brand'),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              // color: Colors.red,
              width: 380.0,
              child: TextField(
                controller: _vehicleModelController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    labelText: 'Vehicle Model'),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              // color: Colors.red,
              width: 380.0,
              child: TextField(
                controller: _vehicleColorController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    labelText: 'Vehicle Color'),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              // color: Colors.red,
              width: 380.0,
              child: TextField(
                controller: _addressController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    labelText: 'Address'),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              child: Text(
                  'Please input the Whatsapp numbers of \n contacts below you wish to send the SOS to'),
            ),
            SizedBox(height: 15.0),
            Container(
              // color: Colors.red,
              width: 380.0,
              child: TextField(
                controller: _contactOneController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    labelText: 'Contact 1'),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              // color: Colors.red,
              width: 380.0,
              child: TextField(
                controller: _contactTwoController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    labelText: 'Contact 2'),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              // color: Colors.red,
              width: 380.0,
              child: TextField(
                controller: _contactThreeController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    labelText: 'Contact 3'),
              ),
            ),
            SizedBox(height: 25.0),
            RoundedButton(
                title: 'SAVE',
                color: Colors.red.shade900,
                onPressed: _saveSettings),
            RoundedButton(
                title: 'DEMO',
                color: Colors.red,
                onPressed: () {
                  FlutterOpenWhatsapp.sendSingleMessage(
                      '91${_contactOneController.text}',
                      'HELP! \n${_nameController.text} just had a car accident. \n'
                          'Blood Group : ${_bloodGroupController.text} \nCar : ${_vehicleColorController.text} ${_vehicleBrandController.text} ${_vehicleModelController.text} \n'
                          'Address: ${_addressController.text}\n'
                          'coordinates: latitude = ${latitudeData} \n longitude = ${longitudeData}');
                  FlutterOpenWhatsapp.sendSingleMessage(
                      '91${_contactTwoController.text}',
                      'HELP! \n${_nameController.text} just had a car accident. \n'
                          'Blood Group : ${_bloodGroupController.text} \nCar : ${_vehicleColorController.text} ${_vehicleBrandController.text} ${_vehicleModelController.text} \n'
                          'Address: ${_addressController.text}\n'
                          'coordinates: latitude = ${latitudeData} \n longitude = ${longitudeData}');
                  FlutterOpenWhatsapp.sendSingleMessage(
                      '91${_contactThreeController.text}',
                      'HELP! \n${_nameController.text} just had a car accident. \n'
                          'Blood Group : ${_bloodGroupController.text} \nCar : ${_vehicleColorController.text} ${_vehicleBrandController.text} ${_vehicleModelController.text} \n'
                          'Address: ${_addressController.text}\n'
                          'coordinates: latitude = ${latitudeData} \n longitude = ${longitudeData}');
                }),
          ],
        ),
      ),
    );
  }

  void _saveSettings() {
    final newSettings = Settings(
      nameInput: _nameController.text,
      bloodGroupInput: _bloodGroupController.text,
      vehicleBrandInput: _vehicleBrandController.text,
      vehicleModelInput: _vehicleModelController.text,
      vehicleColorInput: _vehicleColorController.text,
      addressInput: _addressController.text,
      contactOne: _contactOneController.text,
      contactTwo: _contactTwoController.text,
      contactThree: _contactThreeController.text,
    );

    print(newSettings);
    _preferencesService.saveSettings(newSettings);
  }
}

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {@required this.title, @required this.color, @required this.onPressed});

  final Color color;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
