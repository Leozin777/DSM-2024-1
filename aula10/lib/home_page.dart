import 'package:aula10/components/icon_with_text.dart';
import 'package:aula10/components/title_with_star.dart';
import 'package:aula10/widgets/CustomIcon.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter layout demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                "https://th.bing.com/th/id/OIG4.dimVYUny9Q2nfvuwTdne?w=1024&h=1024&rs=1&pid=ImgDetMain"),
            const Padding(
              padding: EdgeInsets.all(30),
              child: TitleWithStar(
                title: "Testeeeee",
                subtitle: "testeee2",
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconWithText(size: 40, color: Colors.red, icon: Icons.phone, text: "CALL",),
                IconWithText(size: 40, color: Colors.red, icon: Icons.send, text: "SEND",),
                IconWithText(size: 40, color: Colors.red, icon: Icons.share, text: "SHARE",),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris interdum vulputate sagittis. Quisque pulvinar iaculis magna, eu maximus quam. Nunc pharetra ligula ac enim rutrum semper. Cras eget dapibus turpis. Quisque id purus metus. Vestibulum est augue, venenatis vitae scelerisque eget, vehicula a arcu. Fusce sit amet fringilla massa, et ornare lorem. Donec auctor ipsum et condimentum feugiat. Nunc sed tristique magna, at sagittis dui. Etiam quis aliquet dolor, vitae dictum mauris. Nullam scelerisque augue et arcu cursus varius vitae id")
          ],
        ),
      ),
    );
  }
}
