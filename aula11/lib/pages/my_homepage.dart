import 'dart:math';

import 'package:aula11/widgets/languages_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  late Color _appBarColor;
  final TextEditingController _controller = TextEditingController();
  String _filter = "";

  _changeColorAppBar() {
    int index = Random().nextInt(Colors.primaries.length);
    _appBarColor = Colors.primaries[index];
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _changeColorAppBar();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            actions: [
              IconButton(
                  onPressed: () => {
                        setState(() {
                          _changeColorAppBar();
                        }),
                      },
                  icon: const Icon(Icons.color_lens_rounded))
            ],
            backgroundColor: _appBarColor,
          ),
          body: Languages(filter: _filter,),
          bottomSheet: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onChanged: (text){
                      _controller.text = text;
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Filtro",
                        label: Text("Filtro")),
                  ),
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    _filter = _controller.text;
                  });
                }, child: Text("Filtrar"))
              ],
            ),
          )),
    );
  }
}
