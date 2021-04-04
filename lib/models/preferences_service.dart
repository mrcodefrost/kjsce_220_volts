import 'package:kjsce_220_volts/models/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  Future saveSettings(Settings settings) async {
    final preferences = await SharedPreferences.getInstance();

    await preferences.setString('nameKey', settings.nameInput);
    await preferences.setString('bloodGroupKey', settings.bloodGroupInput);
    await preferences.setString('vehicleBrandKey', settings.vehicleBrandInput);
    await preferences.setString('vehicleModelKey', settings.vehicleModelInput);
    await preferences.setString('vehicleColorKey', settings.vehicleColorInput);
    await preferences.setString('address', settings.addressInput);
    await preferences.setString('contactOneKey', settings.contactOne);
    await preferences.setString('contactTwoKey', settings.contactTwo);
    await preferences.setString('contactThreeKey', settings.contactThree);

    print('Saved Details');
  }

  Future<Settings> getSettings() async {
    final preferences = await SharedPreferences.getInstance();

    final name = preferences.getString('nameKey');
    final bloodGroup = preferences.getString('bloodGroupKey');
    final vehicleBrand = preferences.getString('vehicleBrandKey');
    final vehicleModel = preferences.getString('vehicleModelKey');
    final vehicleColor = preferences.getString('vehicleColorKey');
    final address = preferences.getString('address');
    final contactOne = preferences.getString('contactOneKey');
    final contactTwo = preferences.getString('contactTwoKey');
    final contactThree = preferences.getString('contactThreeKey');

    return Settings(
      nameInput: name,
      bloodGroupInput: bloodGroup,
      vehicleBrandInput: vehicleBrand,
      vehicleModelInput: vehicleModel,
      vehicleColorInput: vehicleColor,
      addressInput: address,
      contactOne: contactOne,
      contactTwo: contactTwo,
      contactThree: contactThree,
    );
  }
}
