import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatelessWidget {
  final String nama;
  final String email;
  final String alamat;
  final String noTelp;

  ProfilePage(
      {required this.nama,
      required this.email,
      required this.alamat,
      required this.noTelp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Selamat Datang $nama',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Icon(Icons.person, size: 100, color: Colors.blueAccent),
              SizedBox(height: 40),
              Text('Nama: $nama', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('Email: $email', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('Alamat: $alamat', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('No Telp: $noTelp', style: TextStyle(fontSize: 18)),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: Text('Keluar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
