import 'package:flutter/material.dart';
import 'package:editable/editable.dart';
import 'package:akumak_app/db/equipment.dart';

class boardMemberOthersEquipment extends StatefulWidget {
  const boardMemberOthersEquipment({Key? key}) : super(key: key);

  @override
  State<boardMemberOthersEquipment> createState() => _boardMemberOthersEquipmentState();
}

class _boardMemberOthersEquipmentState extends State<boardMemberOthersEquipment> {

  final _editableKey = GlobalKey<EditableState>();

  late List equipmentRows = equipment().rows;
  late List equipmentCols = equipment().cols;


  // void _printEditedRows() {
  //   List editedRows = _editableKey.currentState!.editedRows;
  //   print(editedRows);
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCDFFED),
      body: Editable(
        key: _editableKey,
        columns: equipmentCols,
        rows: equipmentRows,
        zebraStripe: true,
        stripeColor1: Color(0xFFCDFFED),
        stripeColor2: Color(0xFF91FDDD),
        // onRowSaved: (value) {
        //   print(value);
        // },
        // onSubmitted: (value) {
        //   print(value);
        // },
        columnRatio: 200,
        borderColor: Color(0xFF12FFDD),
        tdStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        trHeight: 70,
        borderWidth: 1,
        thStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        thAlignment: TextAlign.center,
        thVertAlignment: CrossAxisAlignment.end,
        thPaddingBottom: 2,
        showSaveIcon: true,
        saveIconColor: Color(0xFF008762),
        tdAlignment: TextAlign.center,
        tdEditableMaxLines: 50, // don't limit and allow data to wrap
        tdPaddingTop: 27,
        tdPaddingBottom: 14,
        tdPaddingLeft: 2,
        tdPaddingRight: 2,

        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF12FFDD)),
            borderRadius: BorderRadius.all(Radius.circular(10))),


      ),
    );
    // return Scaffold(
    //     backgroundColor: Color(0xFFCDFFED),
    //   body: ChangeNotifierProvider<equipmentProvider>(
    //     create: (context)=> equipmentProvider(),
    //     child: Consumer<equipmentProvider>(
    //       builder: (context,provider,child){
    //         if(provider.equipment==null){
    //           provider.getData(context);
    //           return Center(child: CircularProgressIndicator());
    //         }
    //         return SingleChildScrollView(
    //           scrollDirection: Axis.horizontal,
    //           child: SingleChildScrollView(
    //             child: DataTable(
    //               columns: [
    //                 DataColumn(label: Text("Name"),tooltip:"represents equipment`s name"),
    //                 DataColumn(label: Text("Code"),tooltip:"represents equipment`s code"),
    //                 DataColumn(label: Text("Type"),tooltip:"represents equipment`s type"),
    //                 DataColumn(label: Text("Weight"),tooltip:"represents equipment`s weight"),
    //                 DataColumn(label: Text("Size"),tooltip:"represents equipment`s size"),
    //                 DataColumn(label: Text("Color"),tooltip:"represents equipment`s color"),
    //                 DataColumn(label: Text("BuyingTime"),tooltip:"represents equipment`s buying time"),
    //                 DataColumn(label: Text("UsingStatus"),tooltip:"represents equipment`s using status"),
    //                 DataColumn(label: Text("PreviusCountDate"),tooltip:"represents equipment`s previus count date"),
    //                 DataColumn(label: Text("LastCountDate"),tooltip:"represents equipment`s last count date"),
    //                 DataColumn(label: Text("Kind"),tooltip:"represents equipment`s kind"),
    //                 DataColumn(label: Text("Amount"),tooltip:"represents equipment`s amount"),
    //                 DataColumn(label: Text("TradeMark"),tooltip:"represents equipment`s trade mark"),
    //                 DataColumn(label: Text("Id"),tooltip:"represents equipment`s id"),
    //               ],
    //               rows: provider.equipment.results!
    //                   .map((equipment) => DataRow(
    //                 // List<DataCell> cells is required in every row
    //                   cells: [
    //                     // I want to display a green color icon when user is verified and red when unverified
    //                     DataCell(Text(equipment.name)),
    //                     DataCell(Text(equipment.code)),
    //                     DataCell(Text(equipment.type)),
    //                     DataCell(Text(equipment.weight)),
    //                     DataCell(Text(equipment.size)),
    //                     DataCell(Text(equipment.color)),
    //                     DataCell(Text(equipment.buyingTime)),
    //                     DataCell(Text(equipment.usingStatus)),
    //                     DataCell(Text(equipment.previusCountDate)),
    //                     DataCell(Text(equipment.lastCountDate)),
    //                     DataCell(Text(equipment.kind)),
    //                     DataCell(Text(equipment.tradeMark)),
    //                     DataCell(Text(equipment.id)),
    //                   ])
    //               ).toList(),
    //             ),
    //           ),
    //         );
    //
    //
    //       },
    //     ),
    //   ),
    // );
  }
}
