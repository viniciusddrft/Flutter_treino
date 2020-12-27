import 'package:flutter/material.dart';
import 'CustomSwitch.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/imagens/eu.png'),
                ),
                accountName: Text(
                  'Vinicius dadario de freitas',
                  style: TextStyle(fontFamily: 'ubuntu'),
                ),
                accountEmail: Text(
                  'viniciusddrft5@gmail.com',
                  style: TextStyle(fontFamily: 'ubuntu'),
                )),
            ListTile(
                leading: Icon(Icons.home),
                title: Text('Inicio'),
                subtitle: Text(
                  'tela de inicio',
                  style: TextStyle(fontFamily: 'ubuntu'),
                ),
                onTap: () {
                  print('vc é feio :/');
                }),
            ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'Logout',
                  style: TextStyle(fontFamily: 'ubuntu'),
                ),
                subtitle: Text(
                  'Finalizar sessão',
                  style: TextStyle(fontFamily: 'ubuntu'),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                })
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(fontFamily: 'ubuntu'),
        ),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contador: $counter',
              style: TextStyle(fontSize: 20, fontFamily: 'ubuntu'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
