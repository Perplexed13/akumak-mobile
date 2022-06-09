import 'package:flutter/material.dart';
import 'package:editable/editable.dart';
import '../db/equipment.dart';
class trainerEquipment extends StatefulWidget {
  const trainerEquipment({Key? key}) : super(key: key);

  @override
  State<trainerEquipment> createState() => _trainerEquipmentState();
}

class _trainerEquipmentState extends State<trainerEquipment> {

  final _editableKey = GlobalKey<EditableState>();

  late List equipmentRows = equipment().rows;
  late List equipmentCols = equipment().cols;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCDF3FF),
      body: Editable(
        key: _editableKey,
        columns: equipmentCols,
        rows: equipmentRows,
        zebraStripe: true,
        stripeColor1: Color(0xFFCDF3FF),
        stripeColor2: Color(0xFF9BE7FF),
        // onRowSaved: (value) {
        //   print(value);
        // },
        // onSubmitted: (value) {
        //   print(value);
        // },
        columnRatio: 200,
        borderColor: Color(0xFF06C3FF),
        tdStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        trHeight: 70,
        borderWidth: 1,
        thStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        thAlignment: TextAlign.center,
        thVertAlignment: CrossAxisAlignment.end,
        thPaddingBottom: 2,
        showSaveIcon: true,
        saveIconColor: Color(0xFF024E66),
        tdAlignment: TextAlign.center,
        tdEditableMaxLines: 50, // don't limit and allow data to wrap
        tdPaddingTop: 27,
        tdPaddingBottom: 14,
        tdPaddingLeft: 2,
        tdPaddingRight: 2,

        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF06C3FF)),
            borderRadius: BorderRadius.all(Radius.circular(10))),


      ),
    );
  }
}
