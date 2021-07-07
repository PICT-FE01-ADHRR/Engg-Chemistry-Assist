import 'package:flutter/material.dart';

class EdtaCalculator extends StatefulWidget {
  @override
  _EdtaCalculatorState createState() => _EdtaCalculatorState();
}

class _EdtaCalculatorState extends State<EdtaCalculator> {
  TextEditingController volumeWater = TextEditingController();
  TextEditingController volumeEdta = TextEditingController();
  TextEditingController molarityEdta = TextEditingController();

  String hardnessDisplay = "";

  var volumeWaterValue = 0.0;
  var volumeEdtaValue = 0.0;
  var molarityEdtaValue = 0.0;
  var hardness = 0.0;

  // ignore: non_constant_identifier_names
  void Hardness() {
    if (volumeWater.text.isEmpty) {
    } else {
      volumeWaterValue = double.parse(volumeWater.text);
    }
    if (volumeEdta.text.isEmpty) {
    } else {
      volumeEdtaValue = double.parse(volumeEdta.text);
    }

    if (molarityEdta.text.isEmpty) {
    } else {
      molarityEdtaValue = double.parse(molarityEdta.text);
    }

    hardness = volumeEdtaValue * molarityEdtaValue * 100000 / volumeWaterValue;

    setState(() {
      hardnessDisplay =
          "Hardness of water = " + hardness.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Text(
          "EDTA Numerical Solver",
        ),
        backgroundColor: Color(0xFF0a1931),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Text(
                'Enter the required data to find the Hardness of Water',
                style: TextStyle(fontSize: 18),
              ),
              // Text('Mg(HCO3)2'),
              TextField(
                decoration:
                    InputDecoration(labelText: "Volume of Water Titrated"),
                keyboardType: TextInputType.number,
                controller: volumeWater,
              ),
              // Text('Ca(HCO3)2'),
              TextField(
                decoration:
                    InputDecoration(labelText: "Volume of EDTA consumed"),
                keyboardType: TextInputType.number,
                controller: volumeEdta,
              ),
              // Text('MgCl2'),
              TextField(
                decoration: InputDecoration(labelText: "Molarity of EDTA"),
                keyboardType: TextInputType.number,
                controller: molarityEdta,
                onSubmitted: (_) => Hardness(),
              ),
              // Text('MgSO4'),

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
                  Hardness();
                },
              ),
              Text(
                hardnessDisplay + " ppm",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
