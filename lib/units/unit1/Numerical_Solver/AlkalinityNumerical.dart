import 'package:flutter/material.dart';

class AlkalinityCalculator extends StatefulWidget {
  @override
  _AlkalinityCalculatorState createState() => _AlkalinityCalculatorState();
}

class _AlkalinityCalculatorState extends State<AlkalinityCalculator> {
  TextEditingController volumeWater = TextEditingController();
  TextEditingController normality = TextEditingController();
  TextEditingController reading_1 = TextEditingController();
  TextEditingController reading_2 = TextEditingController();

  String hydroxideAlkalinityText = "";
  String carbonateAlkalinityText = "";
  String bicarbonateAlkalinityText = "";

  var volumeWaterValue = 0.0;
  var normalityValue = 0.0;
  var reading_1Value = 0.0;
  var reading_2Value = 0.0;

  var phenolphthaleinAlkalinity = 0.0;
  var methylOrangeAlkalinity = 0.0;

  var hydroxideAlkalinity = 0.0;
  var carbonateAlkalinity = 0.0;
  var bicarbonateAlkalinity = 0.0;
  // ignore: non_constant_identifier_names
  void TotalHardness() {
    // ignore: unnecessary_null_comparison
    if (volumeWater.text.isEmpty) {
    } else {
      volumeWaterValue = double.parse(volumeWater.text);
    }

    if (normality.text.isEmpty) {
    } else {
      normalityValue = double.parse(normality.text);
    }

    if (reading_1.text.isEmpty) {
    } else {
      reading_1Value = double.parse(reading_1.text);
    }

    if (reading_2.text.isEmpty) {
    } else {
      reading_2Value = double.parse(reading_2.text);
    }

    if (reading_2.text.isEmpty) {
    } else {
      reading_2Value = double.parse(reading_2.text);
    }

    phenolphthaleinAlkalinity =
        ((50 * reading_1Value * normalityValue * 1000) / volumeWaterValue);

    methylOrangeAlkalinity =
        ((50 * reading_2Value * normalityValue * 1000) / volumeWaterValue);

    if (phenolphthaleinAlkalinity == 0) {
      bicarbonateAlkalinity = methylOrangeAlkalinity;
    } else if (phenolphthaleinAlkalinity == 0.5 * methylOrangeAlkalinity) {
      carbonateAlkalinity = 2 * phenolphthaleinAlkalinity;
    } else if (phenolphthaleinAlkalinity < 0.5 * methylOrangeAlkalinity) {
      carbonateAlkalinity = 2 * phenolphthaleinAlkalinity;
      bicarbonateAlkalinity =
          methylOrangeAlkalinity - 2 * phenolphthaleinAlkalinity;
    } else if (phenolphthaleinAlkalinity > 0.5 * methylOrangeAlkalinity) {
      hydroxideAlkalinity =
          2 * phenolphthaleinAlkalinity - methylOrangeAlkalinity;
      carbonateAlkalinity =
          2 * (methylOrangeAlkalinity - phenolphthaleinAlkalinity);
    } else if (phenolphthaleinAlkalinity == methylOrangeAlkalinity) {
      hydroxideAlkalinity = phenolphthaleinAlkalinity;
    }
    if (hydroxideAlkalinity < 0) {
      hydroxideAlkalinity = 0;
    }
    if (carbonateAlkalinity < 0) {
      carbonateAlkalinity = 0;
    }
    if (bicarbonateAlkalinity < 0) {
      bicarbonateAlkalinity = 0;
    }
    setState(() {
      hydroxideAlkalinityText =
          "OH - Akalinity = " + hydroxideAlkalinity.toStringAsFixed(2);
      carbonateAlkalinityText =
          "CO3 2- Akalinity = " + carbonateAlkalinity.toStringAsFixed(2);
      bicarbonateAlkalinityText =
          "HCO3 - Akalinity = " + bicarbonateAlkalinity.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Text(
          "Alkalinity Numericals",
        ),
        backgroundColor: Color(0xFF0a1931),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Text(
                'Enter the required data to find amounts of Alkalinities in Water',
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
                decoration: InputDecoration(labelText: "Normality of H2So4"),
                keyboardType: TextInputType.number,
                controller: normality,
              ),
              // Text('MgCl2'),
              TextField(
                decoration: InputDecoration(
                    labelText: "Amount H2SO4 till Phenolphthalein end point"),
                keyboardType: TextInputType.number,
                controller: reading_1,
              ),
              // Text('MgSO4'),
              TextField(
                decoration: InputDecoration(
                    labelText: "Amount H2SO4 till Methyl Orange end point"),
                keyboardType: TextInputType.number,
                controller: reading_2,
                onSubmitted: (_) => TotalHardness(),
              ),
              // Text('Mg(NO3)2'),

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
                  TotalHardness();
                },
              ),
              Text(
                hydroxideAlkalinityText,
                style: TextStyle(fontSize: 20),
              ),
              Text(
                carbonateAlkalinityText,
                style: TextStyle(fontSize: 20),
              ),
              Text(
                bicarbonateAlkalinityText,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
