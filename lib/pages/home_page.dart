import 'package:flutter/material.dart';
// Import widget halaman CreateNotesPage

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'iNotes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(
                    10.0), // Sesuaikan dengan jumlah sudut yang diinginkan
              ),
              child: const Center(
                child: Text(
                  "Olahraga",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Create Note',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          // Menggunakan Navigator untuk melakukan routing ke halaman lain
          switch (index) {
            case 0:
              // Tidak ada perubahan, tetap di halaman utama
              break;
            case 1:
              // Routing ke halaman CreateNotesPage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreateNotesPage()),
              );
              break;
            case 2:
              // Routing ke halaman ProfilePage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
          }
        },
      ),
    );
  }
}

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes Page'),
      ),
      body: Center(
        child: Text('This is the Notes page'),
      ),
    );
  }
}

class CreateNotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Notes'),
      ),
      body: Center(
        child: Text('This is the Create Notes page'),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Text('This is the Profile page'),
      ),
    );
  }
}
