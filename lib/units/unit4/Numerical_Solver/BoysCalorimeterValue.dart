import 'package:flutter/material.dart';

class BoysCalorimeter extends StatefulWidget {
  const BoysCalorimeter({super.key});

  @override
  _BoysCalorimeterState createState() => _BoysCalorimeterState();
}

class _BoysCalorimeterState extends State<BoysCalorimeter> {
  TextEditingController coolingWater = TextEditingController();
  TextEditingController gasBurned = TextEditingController();
  TextEditingController riseInTemp = TextEditingController();
  TextEditingController steamCondesned = TextEditingController();

  String ncvText = "";
  String gcvText = "";
  // String bicarbonateAlkalinityText = "";

  var coolingWaterValue = 0.0;
  var gasBurnedValue = 0.0;
  var riseInTempValue = 0.0;
  var steamCondesnedValue = 0.0;

  var ncvValue = 0.0;
  var gcvValue = 0.0;

  // ignore: non_constant_identifier_names
  void NCV() {
    // ignore: unnecessary_null_comparison
    if (coolingWater.text.isEmpty) {
    } else {
      coolingWaterValue = double.parse(coolingWater.text);
    }

    if (gasBurned.text.isEmpty) {
    } else {
      gasBurnedValue = double.parse(gasBurned.text);
    }

    if (riseInTemp.text.isEmpty) {
    } else {
      riseInTempValue = double.parse(riseInTemp.text);
    }

    if (steamCondesned.text.isEmpty) {
    } else {
      steamCondesnedValue = double.parse(steamCondesned.text);
    }

    gcvValue = coolingWaterValue * riseInTempValue / gasBurnedValue;

    ncvValue = gcvValue - steamCondesnedValue * 587 / gasBurnedValue;

    setState(() {
      gcvText = "GCV = ${gcvValue.toStringAsFixed(2)} kcal/m^3";
      ncvText = "NCV = ${ncvValue.toStringAsFixed(2)} kcal/m^3";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: const Text(
          "Boys Gas Calorimeter Numericals",
        ),
        backgroundColor: const Color(0xFF0a1931),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              const Text(
                'Enter the required data to find the NCV & GCV',
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText: "Weight of cooling water used (kg)"),
                keyboardType: TextInputType.number,
                controller: coolingWater,
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText: "Volume of gas burnt (m^3)"),
                keyboardType: TextInputType.number,
                controller: gasBurned,
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText: "Rise in temperature (celcuis)"),
                keyboardType: TextInputType.number,
                controller: riseInTemp,
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText: "Mass of steam condensed (kg)"),
                keyboardType: TextInputType.number,
                controller: steamCondesned,
                onSubmitted: (_) => NCV(),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                child: const Text(
                  'Calculate',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);

                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                  NCV();
                },
              ),
              Text(
                ncvText,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                gcvText,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
