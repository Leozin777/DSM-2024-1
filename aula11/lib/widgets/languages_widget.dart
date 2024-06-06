import 'package:flutter/material.dart';

List<String> languages = [
  'Dart',
  'Java',
  'Kotlin',
  'Swift',
  'Objective-C',
  'JavaScript',
  'Python',
  'C#',
  'C++',
  'Ruby',
  'Go',
  'Rust',
  'PHP',
  'TypeScript',
  'CSS',
  'SQL',
  'Shell',
  'Scala',
  'R',
  'Perl',
  'Haskell',
  'Lua',
  'Julia',
  'Groovy',
];

class Languages extends StatefulWidget {
  final String filter;
  
  const Languages({super.key, required this.filter});

  @override
  State<StatefulWidget> createState() => _LanguageState();

  _filterLanguages(){
    return languages.where((element) => element.toLowerCase().contains(filter.toLowerCase())).toList();
  }
  
}

class _LanguageState extends State<Languages> {
  List<String> languagedFiltered = [];

  @override
  void initState() {
    languagedFiltered = widget._filterLanguages();
    super.initState();
  }

  @override
  void didUpdateWidget(Languages oldWidget) {
    if(oldWidget.filter != widget.filter){
      languagedFiltered = widget._filterLanguages();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int indexLanguages) {
          return Text(languagedFiltered[indexLanguages]);
        },
        separatorBuilder: (BuildContext context, int indexLanguages) {
          return Divider();
        },
        itemCount: languagedFiltered.length);
  }
}