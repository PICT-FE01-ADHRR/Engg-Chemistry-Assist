import 'package:flutter/material.dart';

class HardnessCalculator extends StatefulWidget {
  @override
  _HardnessCalculatorState createState() => _HardnessCalculatorState();
}

class _HardnessCalculatorState extends State<HardnessCalculator> {
  TextEditingController mghco32 = TextEditingController();
  TextEditingController cahco32 = TextEditingController(text: "0");
  TextEditingController mgcl2 = TextEditingController(text: "0");
  TextEditingController caso4 = TextEditingController(text: "0");
  TextEditingController mgno32 = TextEditingController(text: "0");
  TextEditingController mgso4 = TextEditingController(text: "0");

  String tempoutput = "";
  String permoutput = "";
  String totoutput = "";
  var mgcho32Value = 0.0;
  var cahco32Value = 0.0;
  var temporaryHardness = 0.0;
  var mgcl2Value = 0.0;
  var caso4Value = 0.0;
  var mgno32Value = 0.0;
  var mgso4Value = 0.0;
  var permanentHardness = 0.0;
  var totalHardness = 0.0;

  // ignore: non_constant_identifier_names
  void TotalHardness() {
    // ignore: unnecessary_null_comparison
    if (mghco32.text.isEmpty) {
      mghco32.text = "0";
    }
    mgcho32Value = double.parse(mghco32.text);
    mgcho32Value = mgcho32Value * 100 / 146;

    if (cahco32.text.isEmpty) {
      cahco32.text = "0";
    }
    cahco32Value = double.parse(cahco32.text);
    cahco32Value = cahco32Value * 100 / 162;

    temporaryHardness = mgcho32Value + cahco32Value;

    if (mgcl2.text.isEmpty) {
      mgcl2.text = "0";
    }
    mgcl2Value = double.parse(mgcl2.text);
    mgcl2Value = mgcl2Value * 100 / 95;
    mgno32Value = double.parse(mgno32.text);
    mgno32Value = mgno32Value * 100 / 148;
    mgso4Value = double.parse(mgso4.text);
    mgso4Value = mgso4Value * 100 / 120;
    caso4Value = double.parse(caso4.text);
    caso4Value = caso4Value * 100 / 136;
    permanentHardness = mgcl2Value + mgno32Value + mgso4Value + caso4Value;
    totalHardness = permanentHardness + temporaryHardness;
    setState(() {
      tempoutput =
          "The temporary hardness is " + temporaryHardness.toStringAsFixed(4);
      permoutput =
          "The permanent hardness is " + permanentHardness.toStringAsFixed(4);
      totoutput = "The total hardness is " + totalHardness.toStringAsFixed(4);
    });
  }

  // void PermanentHardness() {
  //   mgcl2Value = double.parse(mgcl2.text);
  //   mgcl2Value = mgcl2Value * 100 / 95;
  //   mgno32Value = double.parse(mgno32.text);
  //   mgno32Value = mgno32Value * 100 / 148;
  //   mgso4Value = double.parse(mgso4.text);
  //   mgso4Value = mgso4Value * 100 / 120;
  //   caso4Value = double.parse(caso4.text);
  //   caso4Value = caso4Value * 100 / 136;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hardness Calculator'),
      ),
      body: Column(
        children: [
          Text('Enter the values'),
          // Text('Mg(HCO3)2'),
          TextField(
            decoration: InputDecoration(labelText: "Mg(HCO3)2"),
            keyboardType: TextInputType.number,
            controller: mghco32,
          ),
          // Text('Ca(HCO3)2'),
          TextField(
            decoration: InputDecoration(labelText: "Ca(HCO3)2"),
            keyboardType: TextInputType.number,
            controller: cahco32,
          ),
          // Text('MgCl2'),
          TextField(
            decoration: InputDecoration(labelText: "MgCl2"),
            keyboardType: TextInputType.number,
            controller: mgcl2,
          ),
          // Text('MgSO4'),
          TextField(
            decoration: InputDecoration(labelText: "MgSO4"),
            keyboardType: TextInputType.number,
            controller: mgso4,
          ),
          // Text('Mg(NO3)2'),
          TextField(
            decoration: InputDecoration(labelText: "Mg(NO3)2"),
            keyboardType: TextInputType.number,
            controller: mgno32,
          ),
          // Text('CaSO4'),
          TextField(
            decoration: InputDecoration(labelText: "CaSO4"),
            keyboardType: TextInputType.number,
            controller: caso4,
            onSubmitted: (_) => TotalHardness(),
          ),
          ElevatedButton(
            child: Text(
              'Submit',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {
              TotalHardness();
            },
          ),
          Text(
            tempoutput,
          ),
          Text(
            permoutput,
          ),
          Text(
            totoutput,
          ),
        ],
      ),
    );
  }
}
