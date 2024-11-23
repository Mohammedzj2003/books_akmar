import 'package:flutter/material.dart';
class Dialogfilter extends StatefulWidget {
  const Dialogfilter({super.key});

  @override
  State<Dialogfilter> createState() => _DialogfilterState();
}

class _DialogfilterState extends State<Dialogfilter> {
  String _selectedOption = 'Latest';

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Arrangement options'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RadioListTile<String>(
                    title: Text('Latest'),
                    value: 'Latest',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                  RadioListTile<String>(
                    title: Text('Oldest'),
                    value: 'Oldest',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                  RadioListTile<String>(
                    title: Text('Sort by name Ascending'),
                    value: 'ascending',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                  RadioListTile<String>(
                    title: Text('Sort by name Descending'),
                    value: 'Descending',
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Exit'),
                ),
              ],
            );
          },
        );
      },
      icon: Icon(Icons.filter_list_outlined, color: Colors.white, size: 30),
    );
  }
  }



class SecondDialog {
  static void showSecondDialog(BuildContext context) {
    List<String> _selectedCategories = [];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text('Select Category'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CheckboxListTile(
                    title: Text('Horror'),
                    value: _selectedCategories.contains('Horror'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          _selectedCategories.add('Horror');
                        } else {
                          _selectedCategories.remove('Horror');
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Romance'),
                    value: _selectedCategories.contains('Romance'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          _selectedCategories.add('Romance');
                        } else {
                          _selectedCategories.remove('Romance');
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Children'),
                    value: _selectedCategories.contains('Children'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          _selectedCategories.add('Children');
                        } else {
                          _selectedCategories.remove('Children');
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Adventure'),
                    value: _selectedCategories.contains('Adventure'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          _selectedCategories.add('Adventure');
                        } else {
                          _selectedCategories.remove('Adventure');
                        }
                      });
                    },
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  static void showTypeDialog(BuildContext context) {
    String _selectedType = 'Stories';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text('Select Type'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RadioListTile<String>(
                    title: Text('Stories'),
                    value: 'Stories',
                    groupValue: _selectedType,
                    onChanged: (value) {
                      setState(() {
                        _selectedType = value!;
                      });
                      Navigator.of(context).pop();
                      showSecondDialog(context);
                    },
                  ),
                  RadioListTile<String>(
                    title: Text('Novels'),
                    value: 'Novels',
                    groupValue: _selectedType,
                    onChanged: (value) {
                      setState(() {
                        _selectedType = value!;
                      });
                      Navigator.of(context).pop();
                      showSecondDialog(context);
                    },
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
