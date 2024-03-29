import 'package:flutter/material.dart';

const List<String> list = <String>['1', '2', '3', '4'];
class DropdownButtonExample extends StatefulWidget {



  @override
  State<DropdownButtonExample> createState() => _DropdownButtonState();
}

class _DropdownButtonState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: list.first,
      width: 70,
     

      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
