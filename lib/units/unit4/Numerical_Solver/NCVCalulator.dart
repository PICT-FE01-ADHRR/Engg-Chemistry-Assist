import 'package:flutter/material.dart';

class NCVCalculator extends StatefulWidget {
  @override
  _NCVCalculatorState createState() => _NCVCalculatorState();
}

class _NCVCalculatorState extends State<NCVCalculator> {
  TextEditingController hydrogen = TextEditingController();
  TextEditingController moisture = TextEditingController();
  TextEditingController gcv = TextEditingController();

  String netncv = "";
  var hydrogenvalue = 0.0;
  var moisturevalue = 0.0;
  var gcvvalue = 0.0;
  var ncvvalue = 0.0;

  // ignore: non_constant_identifier_names
  void NCV() {
    // ignore: unnecessary_null_comparison
    if (hydrogen.text.isEmpty) {
    } else {
      hydrogenvalue = double.parse(hydrogen.text);
    }
    if (moisture.text.isEmpty) {
    } else {
      moisturevalue = double.parse(moisture.text);
    }
    if (gcv.text.isEmpty) {
    } else {
      gcvvalue = double.parse(gcv.text);
    }

    hydrogenvalue = hydrogenvalue + moisturevalue * 2 / 18;
    ncvvalue = gcvvalue - (9 * hydrogenvalue * 24.50);

    setState(() {
      netncv = "The Net Calorific value is " + ncvvalue.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Text(
          "Net Calorific Value Numericals",
        ),
        backgroundColor: Color(0xFF0a1931),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Text(
                'Enter the required values in kJ/kg',
                style: TextStyle(fontSize: 18),
              ),
              // Text('Mg(HCO3)2'),
              TextField(
                decoration: InputDecoration(labelText: "Dry Hydrogen (%)"),
                keyboardType: TextInputType.number,
                controller: hydrogen,
              ),
              // Text('Ca(HCO3)2'),
              TextField(
                decoration: InputDecoration(labelText: "Moisture (%)"),
                keyboardType: TextInputType.number,
                controller: moisture,
              ),
              // Text('MgCl2'),
              TextField(
                decoration: InputDecoration(labelText: "GCV (kJ/kg)"),
                keyboardType: TextInputType.number,
                controller: gcv,
                onSubmitted: (_) => NCV(),
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
                  NCV();
                },
              ),

              Text(
                netncv + " kJ/kg",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
