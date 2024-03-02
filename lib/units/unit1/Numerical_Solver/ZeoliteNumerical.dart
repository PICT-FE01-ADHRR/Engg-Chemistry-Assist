import 'package:flutter/material.dart';

class ZeoliteCalculator extends StatefulWidget {
  const ZeoliteCalculator({super.key});

  @override
  _ZeoliteCalculatorState createState() => _ZeoliteCalculatorState();
}

class _ZeoliteCalculatorState extends State<ZeoliteCalculator> {
  TextEditingController volumeNacl = TextEditingController();
  TextEditingController concNacl = TextEditingController();
  TextEditingController volumeWater = TextEditingController();

  String hardnessDisplay = "";

  var volumeWaterValue = 0.0;
  var volumeNaclValue = 0.0;
  var concNaclValue = 0.0;
  var hardness = 0.0;

  // ignore: non_constant_identifier_names
  void Hardness() {
    if (volumeNacl.text.isEmpty) {
    } else {
      volumeNaclValue = double.parse(volumeNacl.text);
    }
    if (concNacl.text.isEmpty) {
    } else {
      concNaclValue = double.parse(concNacl.text);
    }

    if (volumeWater.text.isEmpty) {
    } else {
      volumeWaterValue = double.parse(volumeWater.text);
    }

    hardness = 1000 *
        ((volumeNaclValue) * (concNaclValue) * 50) /
        (58.5 * (volumeWaterValue));

    setState(() {
      hardnessDisplay = "Hardness of water = ${hardness.toStringAsFixed(2)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: const Text(
          "Zeolite Numerical Solver",
        ),
        backgroundColor: const Color(0xFF0a1931),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                const Text(
                  'Enter the required data to find the Hardness of Water',
                  style: TextStyle(fontSize: 18),
                ),
                // Text('Mg(HCO3)2'),
                TextField(
                  decoration: const InputDecoration(
                      labelText: "Volume of NaCl consumed"),
                  keyboardType: TextInputType.number,
                  controller: volumeNacl,
                ),
                // Text('Ca(HCO3)2'),
                TextField(
                  decoration:
                      const InputDecoration(labelText: "Concentration of Nacl"),
                  keyboardType: TextInputType.number,
                  controller: concNacl,
                ),
                // Text('MgCl2'),
                TextField(
                  decoration: const InputDecoration(
                      labelText: "Volume of Water Titrated"),
                  keyboardType: TextInputType.number,
                  controller: volumeWater,
                ),
                // Text('MgSO4'),

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
                    Hardness();
                  },
                ),
                Text(
                  "$hardnessDisplay ppm",
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
