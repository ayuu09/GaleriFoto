import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri Foto',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Galeri Foto'),
        ),
        body: Column(
          children: [
            Image.network(
              'https://picsum.photos/id/88/300/200',
              width: double.infinity,
              height: 200,
              fit: BoxFit.fitWidth,
              errorBuilder: (context, error, stackTrace) {
                return Text('Error loading image');
              },
            ),
            const Divider(
              height: 1,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Jalan di Barcelona',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 1.0 * 12), // Jarak sekitar 1,5 spasi (1,5 * tinggi teks) dari "Jalan di Barcelona" ke "Lokasi"
                  Row(
                    children: [
                      Icon(
                        Icons.place,
                        color: Colors.red,
                        size: 15,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Lokasi : Barcelona, Spanyol',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.0 * 12), // Jarak sekitar 1,5 spasi (1,5 * tinggi teks) dari "Lokasi" ke "Publikasi"
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: Colors.blue,
                        size: 15,
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Publikasi : Agustus 2023',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 1.0 * 12), // Jarak sekitar 1,5 spasi (1,5 * tinggi teks) dari "Publikasi" ke "Deskripsi"
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Deskripsi',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Sebuah persimpangan jalan Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}