import 'package:flutter/material.dart';

class UltimateAnalysis extends StatefulWidget {
  @override
  _UltimateAnalysisState createState() => _UltimateAnalysisState();
}

class _UltimateAnalysisState extends State<UltimateAnalysis> {
  TextEditingController coalWeight = TextEditingController();
  TextEditingController kohWeight = TextEditingController();
  TextEditingController cacl2Weight = TextEditingController();

  String carbonPercent = "";
  String hydrogenPerent = "";


  var coalWeightValue = 0.0;
  var kohWeightValue = 0.0;
  var cacl2WeightValue = 0.0;


  // ignore: non_constant_identifier_names
  void Calculate() {
    if (coalWeight.text.isEmpty) {
    } else {
      coalWeightValue = double.parse(coalWeight.text);
    }

    if (kohWeight.text.isEmpty) {
    } else {
      kohWeightValue = double.parse(kohWeight.text);
    }

    if (cacl2Weight.text.isEmpty) {
    } else {
      cacl2WeightValue = double.parse(cacl2Weight.text);
    }


    var carbonPercentValue = 12*kohWeightValue*100/(coalWeightValue*44);
    var hydrogenPercentValue = 2*cacl2WeightValue*100/(coalWeightValue*18);



    setState(() {
      carbonPercent = "Carbon = " + carbonPercentValue.toStringAsFixed(2) + "%";
      hydrogenPerent = "Hydrogen = " + hydrogenPercentValue.toStringAsFixed(2)+ "%";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Text(
          "Proximate Analysis Numericals",
        ),
        backgroundColor: Color(0xFF0a1931),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Text(
                'This is proximate analysis! Enter required data to get Moisture, VM, Ash, FC%',
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Weight of Coal (gm)"),
                keyboardType: TextInputType.number,
                controller: coalWeight,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Increase in KOH U-tube (gm)"),
                keyboardType: TextInputType.number,
                controller: kohWeight,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Increase in CaCl2 U-tube (gm)"),
                keyboardType: TextInputType.number,
                controller: cacl2Weight,
                onSubmitted: (_) => Calculate(),
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
                  Calculate();
                },
              ),
              Text(
                carbonPercent,
                style: TextStyle(fontSize: 20),
              ),
              Text(
                hydrogenPerent,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
