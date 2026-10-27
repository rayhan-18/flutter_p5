import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: LayoutRulesExample()));
}

class LayoutRulesExample extends StatelessWidget {
  const LayoutRulesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tiga Aturan Layout Flutter")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyPages1(),
            Divider(thickness: 2),
            MyPages2(),
            Divider(thickness: 2),
            MyPages3(),
          ],
        ),
      ),
    );
  }
}

class MyPages1 extends StatelessWidget {
  const MyPages1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "1 & 2. Aturan Constraints (Batas) dan Size (ukuran)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            //Contoh Aturan 1 dan 2
            ConstrainedBox(
              // Induk Memberikan Constraint kebawah
              constraints: const BoxConstraints(
                minWidth: 100,
                maxWidth: 200,
                minHeight: 100,
                maxHeight: 200,
              ),
              // Child mencoba menentukan ukuan (up)
              child: Container(
                width:
                    500, //Mencoba lebih besar max width melebihi parent (gagal)
                height: 50, //mencoba lebih kecil dari min height parent (gagal)
                color: Colors.blue,
                child: const Text(
                  "Saya minta 500x50, tapi maksimal dapatnya 200x100",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPages2 extends StatelessWidget {
  const MyPages2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Divider(height: 40, thickness: 2),

            const Text(
              '3. Aturan Posisi (dengan Center)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'parent abu-abu berukuran 200x200. Kotak merah 80x80 tidak bisa menaruh dirinya di tengah, jadi kita gunakan widget Center.',
            ),
            const SizedBox(height: 10),

            // CONTOH ATURAN 3 (CENTER)
            Container(
              width: 200,
              height: 200,
              color: Colors.grey[300], // Induk yang memiliki ruang
              // parent yang menentukan posisi
              child: Center(
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                  child: const Text(
                    'Center',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            const Divider(height: 40, thickness: 2),

            const Text(
              '3. Aturan Posisi (dengan Align)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Parent abu-abu berukuran 200x200. Kotak hijau 80x80 ditempatkan di pojok kanan bawah menggunakan widget Align.',
            ),
            const SizedBox(height: 10),

            // CONTOH ATURAN 3 (ALIGN)
            Container(
              width: 200,
              height: 200,
              color: Colors.grey[300], // Induk yang memiliki ruang
              // Induk yang menentukan posisi
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                  child: const Text(
                    'Align',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPages3 extends StatelessWidget {
  const MyPages3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "3. Aturan posisi (dengan Align)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Parent Abu-Abu berukuran 200x200. Kotak Hijau 80x80 ditempatkan di pojok kanan bawah menggunakan widget align.",
            ),

            //Constoh Aturan 3 (align)
            Container(
              width: 200,
              height: 200,
              color: Colors.grey[300], //Parent yang punya ruang
              // parent yang tentuin posisi
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                  child: const Text(
                    "Align",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}