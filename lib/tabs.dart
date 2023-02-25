import 'package:flutter/material.dart';
import 'package:goodbye_money/pages/add.dart';
import 'package:goodbye_money/pages/expenses.dart';
import 'package:goodbye_money/pages/reports.dart';
import 'package:goodbye_money/pages/settings.dart';
import 'package:goodbye_money/type/widgets.dart';

class TabsController extends StatefulWidget {
  const TabsController({Key? key}) : super(key: key);

  @override
  State<TabsController> createState() => _TabsControllerState();
}

class _TabsControllerState extends State<TabsController> {
  var _selectedIndex = 0;
  static const List<WidgetWithTitle> _pages = [
    Expenses(),
    Reports(),
    Add(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedIndex].title),
        backgroundColor: Colors.black,
      ),
      body: _pages[_selectedIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.paid), label: 'Expense'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Report'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        //selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
