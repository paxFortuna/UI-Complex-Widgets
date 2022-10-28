import 'package:flutter/material.dart';

class ChoiceChipSelector extends StatefulWidget {
  const ChoiceChipSelector({Key? key}) : super(key: key);

  @override
  State<ChoiceChipSelector> createState() => _ChoiceChipSelectorState();
}

class _ChoiceChipSelectorState extends State<ChoiceChipSelector> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 234, 233, 233),
        elevation: 0,
        title: const Text('Choice Chip'),
        centerTitle: true,
      ),
      body: Center(
        child: ChoiceChip(
          label: Text(
            'Choice Chip',
            style: TextStyle(
                color: isSelected
                    ? const Color.fromARGB(255, 18, 149, 255)
                    : Colors.black,
                fontSize: 25),
          ),
          padding: const EdgeInsets.all(15),
          selected: isSelected,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          selectedColor: Color.fromARGB(107, 96, 125, 139),
          onSelected: (selected) {
            setState(() {
              isSelected = selected;
            });
          },
        ),
      ),
    );
  }
}
