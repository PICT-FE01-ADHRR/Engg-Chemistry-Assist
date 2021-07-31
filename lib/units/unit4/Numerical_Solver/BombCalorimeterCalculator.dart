import 'package:flutter/material.dart';

class BombCalorimeter extends StatefulWidget {
  @override
  _BombCalorimeterState createState() => _BombCalorimeterState();
}

class _BombCalorimeterState extends State<BombCalorimeter> {
  TextEditingController fuelweight = TextEditingController();
  TextEditingController waterweight = TextEditingController();
  TextEditingController waterEquivalent = TextEditingController();
  TextEditingController riseInTemp = TextEditingController();
  TextEditingController coolingCorrection = TextEditingController();
  TextEditingController fuseWireCorrection = TextEditingController();
  TextEditingController acidCorrection = TextEditingController();

  String gcvDisplay = "";

  var waterEquivalentValue = 0.0;
  var fuelWeightValue = 0.0;
  var waterWeightValue = 0.0;
  var riseInTempValue = 0.0;
  var coolingCorrectionValue = 0.0;
  var fuseWireCorrectionValue = 0.0;
  var acidCorrectionValue = 0.0;

  var gcvvalue = 0.0;

  // ignore: non_constant_identifier_names
  void GCV() {
    if (fuelweight.text.isEmpty) {
    } else {
      fuelWeightValue = double.parse(fuelweight.text);
    }

    if (waterweight.text.isEmpty) {
    } else {
      waterWeightValue = double.parse(waterweight.text);
    }

    if (waterEquivalent.text.isEmpty) {
    } else {
      waterEquivalentValue = double.parse(waterEquivalent.text);
    }

    if (riseInTemp.text.isEmpty) {
    } else {
      riseInTempValue = double.parse(riseInTemp.text);
    }

    if (coolingCorrection.text.isEmpty) {
    } else {
      coolingCorrectionValue = double.parse(coolingCorrection.text);
    }

    if (fuseWireCorrection.text.isEmpty) {
    } else {
      fuseWireCorrectionValue = double.parse(fuseWireCorrection.text);
    }

    if (acidCorrection.text.isEmpty) {
    } else {
      acidCorrectionValue = double.parse(acidCorrection.text);
    }
    gcvvalue = ((waterEquivalentValue + waterWeightValue) *
                (riseInTempValue + coolingCorrectionValue) -
            (acidCorrectionValue + fuseWireCorrectionValue)) /
        fuelWeightValue;
    setState(() {
      gcvDisplay = "Gross Calorific value is " + gcvvalue.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Text(
          "Bomb Calorimeter Numericals",
        ),
        backgroundColor: Color(0xFF0a1931),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Text(
                'GCV of the fuel is calculated in Bomb Calorimeter experiment in cal/gm',
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                decoration:
                    InputDecoration(labelText: "Weight of fuel burned (gm)"),
                keyboardType: TextInputType.number,
                controller: fuelweight,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Weight of water (gm)"),
                keyboardType: TextInputType.number,
                controller: waterweight,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Water equilavent (gm)"),
                keyboardType: TextInputType.number,
                controller: waterEquivalent,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Rise in temperature (celcuis)"),
                keyboardType: TextInputType.number,
                controller: riseInTemp,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Cooling correction (celcuis)"),
                keyboardType: TextInputType.number,
                controller: coolingCorrection,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Fuse wire correction (cal)"),
                keyboardType: TextInputType.number,
                controller: fuseWireCorrection,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Acid correction (cal)"),
                keyboardType: TextInputType.number,
                controller: acidCorrection,
                onSubmitted: (_) => GCV(),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade900,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                child: Text(
                  'Calculate',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);

                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                  GCV();
                },
              ),
              Text(
                gcvDisplay + " cal/gm",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
