import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/suma.dart';

class Menuoption extends StatefulWidget {
  const Menuoption({super.key});

  @override
  State<Menuoption> createState() => _MenuoptionState();
}

class _MenuoptionState extends State<Menuoption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[400],
          foregroundColor: Colors.white,
          title: Text('menu de opciones'),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 16,
            ),
            Image.network(
              'https://png.pngtree.com/png-clipart/20200701/original/pngtree-hand-drawn-style-math-stationery-elements-png-image_5364500.jpg',
              height: 280,
              width: 280,
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                title: Text('Suma'),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => suma()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Calculadora'),
                leading: Icon(Icons.account_tree_outlined),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Registro'),
                leading: Icon(Icons.account_circle_sharp),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Login'),
                leading: Icon(Icons.add_card_outlined),
                trailing: Icon(Icons.arrow_circle_right_outlined),
                onTap: () {},
              ),
            ),
          ],
        ));
  }
}
