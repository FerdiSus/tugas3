import 'package:flutter/material.dart';
import 'package:tugas3/pages/home.dart';
import 'package:tugas3/pages/profil.dart';


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Myvans(),
    );
  }
}

class Myvans extends StatefulWidget {
  const Myvans({super.key});

  @override
  State<Myvans> createState() => _MyvansState();
}

class _MyvansState extends State<Myvans> {
  List<Widget> _children = [Homee(), Container(), Profil()];
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedNavbar],
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}

final items = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: "Beranda",
  ),
  BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Inbox"),
  BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
];
