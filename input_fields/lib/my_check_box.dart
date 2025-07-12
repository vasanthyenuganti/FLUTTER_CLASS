import 'package:flutter/material.dart';
import 'package:input_fields/selection_model.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool _enable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Checkbox(
              side: BorderSide(
                color: Colors.red,
                // width: 5
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(90),
              ),
              // fillColor: WidgetStatePropertyAll(Colors.cyan),
              activeColor: Colors.green,
              // hoverColor: Colors.red,
              splashRadius: 30,
              checkColor: Colors.red,
              value: _enable,
              onChanged: (v) {
                setState(() {
                  _enable = v!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyCheckBoxTask extends StatefulWidget {
  const MyCheckBoxTask({super.key});

  @override
  State<MyCheckBoxTask> createState() => _MyCheckBoxTaskState();
}

class _MyCheckBoxTaskState extends State<MyCheckBoxTask> {
  List<SelectionModel> colleges = <SelectionModel>[
    SelectionModel(tag: "AEC", status: false),
    SelectionModel(tag: "ACET", status: false),
    SelectionModel(tag: "ACOE", status: false),
    SelectionModel(tag: "AUS", status: false),
  ];

  List<SelectionModel> branchs = <SelectionModel>[
    SelectionModel(tag: "AIML", status: false),
    SelectionModel(tag: "DS", status: false),
    SelectionModel(tag: "CSE", status: false),
    SelectionModel(tag: "IOT", status: false),
    SelectionModel(tag: "IT", status: false),
    SelectionModel(tag: "AIDS", status: false),
    SelectionModel(tag: "CS", status: false),
    SelectionModel(tag: "ECE", status: false),
    SelectionModel(tag: "EEE", status: false),
    SelectionModel(tag: "MECH", status: false),
    SelectionModel(tag: "PET", status: false),
    SelectionModel(tag: "MIN", status: false),
    SelectionModel(tag: "AGRI", status: false),
    SelectionModel(tag: "CIV", status: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CheckBox Task"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            selectionTitleWidget("Colleges"),
            ...optionsForSelection(colleges),
            SizedBox(height: 16),
            selectionTitleWidget("Branches"),
            ...optionsForSelection(branchs),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget selectionTitleWidget(String sectionName) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          sectionName,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  List<Widget> optionsForSelection(List<SelectionModel> options) {
    return List.generate(options.length, (i) {
      return CheckboxListTile(
        value: options[i].status,
        onChanged: (val) {
          setState(() {
            options[i].status = val!;
          });
        },
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(options[i].tag),
        visualDensity: VisualDensity(vertical: -4),
      );
    }).toList();
  }

  Future<void> selectionSheet() async {
    await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            SizedBox(height: 16),
            selectionTitleWidget("Colleges"),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              children:
                  colleges.where((model) => model.status).toList().map((
                    select,
                  ) {
                    return ChoiceChip(
                      label: Text(select.tag),
                      selected: true,
                      selectedColor: Colors.deepPurple,
                      labelStyle: TextStyle(color: Colors.white),
                      checkmarkColor: Colors.white,
                    );
                  }).toList(),
            ),
            SizedBox(height: 8),
            selectionTitleWidget("Braches"),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              children:
                  branchs.where((model) => model.status).toList().map((select) {
                    return ChoiceChip(
                      label: Text(select.tag),
                      selected: true,
                      selectedColor: Colors.deepPurple,
                      labelStyle: TextStyle(color: Colors.white),
                      checkmarkColor: Colors.white,
                    );
                  }).toList(),
            ),
            Spacer(),
            clearButton(),
          ],
        );
      },
    );
  }

  Widget submitButton() {
    return GestureDetector(
      onTap: () async {
        await selectionSheet();
      },
      child: Container(
        height: 55,
        width: MediaQuery.sizeOf(context).width,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            "Submit",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget clearButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 55,
        width: MediaQuery.sizeOf(context).width,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            "Clear",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  void clearData() {
    
  }
}
