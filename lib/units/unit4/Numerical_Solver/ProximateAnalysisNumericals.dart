import 'package:flutter/material.dart';

class ProximateAnalysis extends StatefulWidget {
  const ProximateAnalysis({super.key});

  @override
  _ProximateAnalysisState createState() => _ProximateAnalysisState();
}

class _ProximateAnalysisState extends State<ProximateAnalysis> {
  TextEditingController coalWeight = TextEditingController();
  TextEditingController moisture = TextEditingController();
  TextEditingController volatileMatter = TextEditingController();
  TextEditingController ash = TextEditingController();

  String moisturepercent = "";
  String vmpercent = "";
  String ashpercent = "";
  String fcpercent = "";

  var coalWeightValue = 0.0;
  var moistureValue = 0.0;
  // var hardness = 0.0;
  var volatileMatterValue = 0.0;
  var ashValue = 0.0;

  // ignore: non_constant_identifier_names
  void Calculate() {
    if (coalWeight.text.isEmpty) {
    } else {
      coalWeightValue = double.parse(coalWeight.text);
    }

    if (moisture.text.isEmpty) {
    } else {
      moistureValue = double.parse(moisture.text);
    }

    if (volatileMatter.text.isEmpty) {
    } else {
      volatileMatterValue = double.parse(volatileMatter.text);
    }

    if (ash.text.isEmpty) {
    } else {
      ashValue = double.parse(ash.text);
    }

    var moistureValueweight = coalWeightValue - moistureValue;
    var volatileMatterValueweight = moistureValue - volatileMatterValue;

    moistureValueweight = moistureValueweight * 100 / coalWeightValue;
    volatileMatterValueweight =
        volatileMatterValueweight * 100 / coalWeightValue;
    ashValue = ashValue * 100 / coalWeightValue;

    setState(() {
      moisturepercent = "Moisture = ${moistureValueweight.toStringAsFixed(2)}%";
      vmpercent = "VM = ${volatileMatterValueweight.toStringAsFixed(2)}%";
      ashpercent = "Ash = ${ashValue.toStringAsFixed(2)}%";
      fcpercent =
          "FC = ${(100 - moistureValueweight - volatileMatterValueweight - ashValue).toStringAsFixed(2)}%";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: const Text(
          "Proximate Analysis Numericals",
        ),
        backgroundColor: const Color(0xFF0a1931),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              const Text(
                'This is proximate analysis! Enter required data to get Moisture, VM, Ash, FC%',
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                decoration:
                    const InputDecoration(labelText: "Weight of Coal (gm)"),
                keyboardType: TextInputType.number,
                controller: coalWeight,
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText: "residue after 1st heating at ~100c (gm)"),
                keyboardType: TextInputType.number,
                controller: moisture,
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText: "residue after 2nd heating at ~950c (gm)"),
                keyboardType: TextInputType.number,
                controller: volatileMatter,
              ),
              TextField(
                decoration:
                    const InputDecoration(labelText: "Final residue (gm)"),
                keyboardType: TextInputType.number,
                controller: ash,
                onSubmitted: (_) => Calculate(),
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
                  Calculate();
                },
              ),
              Text(
                moisturepercent,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                vmpercent,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                ashpercent,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                fcpercent,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
