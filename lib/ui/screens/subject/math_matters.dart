import 'package:flutter/material.dart';
import 'package:pmob_22/utils/constants.dart';

class MathMatters extends StatefulWidget {
  const MathMatters({Key? key}) : super(key: key);

  @override
  _MathMattersState createState() => _MathMattersState();
}

class _MathMattersState extends State<MathMatters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7f7f2),
      appBar: AppBar(
        backgroundColor: mainColor,
        toolbarHeight: 80,
        title: const Center(
            child: Text("Matemática",
                style: TextStyle(fontSize: 30, color: textColor))),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("/question");
            },
            child: const ListTile(
              title: Text(
                'Potenciação',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Divider(
            color: mainColor,
            thickness: 2,
            indent: 14,
            endIndent: 14,
          ),
          const ListTile(
            title: Text(
              'Radiciação',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            color: mainColor,
            thickness: 2,
            indent: 14,
            endIndent: 14,
          ),
          const ListTile(
            title: Text(
              'MMC e MDC',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            color: mainColor,
            thickness: 2,
            indent: 14,
            endIndent: 14,
          ),
          const ListTile(
            title: Text(
              'Regra de três',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Simples e composta',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const Divider(
            color: mainColor,
            thickness: 2,
            indent: 14,
            endIndent: 14,
          ),
          const ListTile(
            title: Text(
              'Produtos notáveis',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            color: mainColor,
            thickness: 2,
            indent: 14,
            endIndent: 14,
          ),
          const ListTile(
            title: Text(
              'Função afim',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            color: mainColor,
            thickness: 2,
            indent: 14,
            endIndent: 14,
          ),
          const ListTile(
            title: Text(
              'Função quadrática',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            color: mainColor,
            thickness: 2,
            indent: 14,
            endIndent: 14,
          ),
        ],
      ),
    );
  }
}
