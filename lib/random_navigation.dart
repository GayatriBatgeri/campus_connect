import 'package:flutter/material.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu(
      {super.key, required this.buildings, required this.updateCurrent});
  final Map buildings;
  final Function(String) updateCurrent;

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  List<String> buildingsDropDownList = [];
  String buildingsDropDownValue = '';

  Map floors = {};
  List<String> floorsDropDownList = [];
  String floorsDropDownValue = '';

  List<String> roomsDropDownList = [];
  String roomsDropDownValue = '';

  @override
  void initState() {
    super.initState();
    buildingsDropDownList = widget.buildings.keys.toList().cast<String>();
    buildingsDropDownValue = buildingsDropDownList[0];

    floors = widget.buildings[buildingsDropDownValue];
    floorsDropDownList = floors.keys.toList().cast<String>();
    floorsDropDownValue = floorsDropDownList[0];

    roomsDropDownList = (floors[floorsDropDownValue] as List).cast<String>();
    roomsDropDownValue = roomsDropDownList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Buildings dropdown
            DropdownButton<String>(
              value: buildingsDropDownValue,
              items: buildingsDropDownList.map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                },
              ).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  buildingsDropDownValue = newValue!;
            
                  floors = widget.buildings[buildingsDropDownValue];
                  floorsDropDownList = floors.keys.toList().cast<String>();
                  floorsDropDownValue = floorsDropDownList[0];
            
                  roomsDropDownList =
                      (floors[floorsDropDownValue] as List).cast<String>();
                  roomsDropDownValue = roomsDropDownList[0];
                });
              },
            ),
            
            // floors dropdown
            DropdownButton<String>(
              value: floorsDropDownValue,
              items: floorsDropDownList.map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                },
              ).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  floorsDropDownValue = newValue!;
                  roomsDropDownList =
                      (floors[floorsDropDownValue] as List).cast<String>();
                  roomsDropDownValue = roomsDropDownList[0];
                });
              },
            ),
            
            // rooms dropdown
            DropdownButton<String>(
              value: roomsDropDownValue,
              items: roomsDropDownList.map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                },
              ).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  roomsDropDownValue = newValue!;
                  Navigator.pop(context);
                  widget.updateCurrent(roomsDropDownValue);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
