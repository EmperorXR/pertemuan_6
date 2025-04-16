import 'package:flutter/material.dart';
import 'package:pertemuan_6/page/profile_page.dart';
import 'package:pertemuan_6/main.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPage();
}

class _CheckboxPage extends State<CheckboxPage> {
  List<Widget> _page = [ProfilePage(), CheckboxPage()];

  int currentPage = 0;

  bool Minuman = false;
  bool Makanan = false;

  List menu = [];

  void updateMenu() {
    menu.clear();
    if (Minuman == true) {
      menu.addAll(['Teh Manis, Kopi, Air Mineral']);
    }
    if (Makanan == true) {
      menu.addAll(['Nasi Goreng, Kwetiau Goreng, Mie Tek-Tek']);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Menu Restoku',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),

            //Menu 1
            SizedBox(height: 20),
            Card(
              child: SizedBox(
                height: 70,
                width: 250,
                child: Row(
                  children: [
                    Checkbox(
                      value: Minuman,
                      onChanged: (value) {
                        setState(() {
                          Minuman = !Minuman;
                          updateMenu();
                        });
                      },
                      activeColor: Colors.lightBlueAccent,
                      checkColor: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Image.asset('images/minuman.png'),

                    SizedBox(width: 15),
                    Text('Minuman', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ),

            // Menu 2
            SizedBox(height: 20),
            Card(
              child: SizedBox(
                height: 70,
                width: 250,
                child: Row(
                  children: [
                    Checkbox(
                      value: Makanan,
                      onChanged: (value) {
                        setState(() {
                          Makanan = !Makanan;
                          updateMenu();
                        });
                      },
                      activeColor: Colors.lightBlueAccent,
                      checkColor: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Image.asset('images/makanan.png'),

                    SizedBox(width: 15),
                    Text('Makanan', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              'Menu :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),

            SizedBox(height: 15),
            Wrap(children: [for (var item in menu) Text('$item ,')]),
          ],
        ),
      ),
    );
  }
}
