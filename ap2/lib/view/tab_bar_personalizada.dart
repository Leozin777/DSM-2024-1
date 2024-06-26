import 'package:ap2/view/pages/character_screen.dart';
import 'package:ap2/view/pages/location_screen.dart';
import 'package:flutter/material.dart';

class TabBarPersonalizada extends StatefulWidget {
  const TabBarPersonalizada({super.key});

  @override
  State<TabBarPersonalizada> createState() => _TabBarPersonalizadaState();
}

class _TabBarPersonalizadaState extends State<TabBarPersonalizada>{
  int _indexPaginaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginaSelecionada(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexPaginaSelecionada,
        onTap: _itemTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Characters"),
          BottomNavigationBarItem(icon: Icon(Icons.place), label: "Locations")
        ],
      )
    );
  }

  Widget _paginaSelecionada() {
    switch (_indexPaginaSelecionada) {
      case 0:
        return const CharacterScreen();
      case 1:
        return const LocationScreen();
      default:
        return const Scaffold(
          body: Center(child: Text("Erro durente a navegação")),
        );
    }
  }

  void _itemTap(int index) {
    setState(() {
      _indexPaginaSelecionada = index;
    });
  }
}
