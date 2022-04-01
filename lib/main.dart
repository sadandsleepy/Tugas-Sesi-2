import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Sesi 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: const Color(0xff304769),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Tugas Sesi 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Text text (msg){
    return Text(msg, style: const TextStyle(
        color: Colors.white,
        fontSize: 20
    ));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: text("Selamat Datang di Univeristas Esa Unggul")
            ),
            Container(
              child: text("Program Studi Teknik Informatika")
            ),
            Container(
              child: text("Fakultas Ilmu Komputer"),
            ),
            const SizedBox(height: 130),
            const CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('assets/me.jpg'),
            ),
            const SizedBox(height: 80),
            Column(
              children: [
                text("Nama Saya Candra"),
                text("NIM Saya 20190801153"),
                text("Hobby Saya Menonton Film"),
                text("Pekerjaan Saya Teknisi Komputer"),
                text("Status Belum Menikah"),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
