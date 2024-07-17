import 'package:flutter/material.dart';
import 'package:gamify_traceability_coffee/ui/widgets/Forms.dart';
import 'package:gamify_traceability_coffee/ui/widgets/buttons.dart';

class PenjadwalanPage extends StatelessWidget {
  const PenjadwalanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Penjadwalan',
          textAlign: TextAlign.center, // Align text to center
        ),
        centerTitle: true, // Center align the title
      ),
      body: Center(
        child: Column(
          children: [
            CustomFormField(title: 'Judul', typeFormField: 0),
            CustomFormField(title: 'Pesan', typeFormField: 0),
            CustomDatePicker(title: 'Tanggal Penjadwalan'),
            CustomFilledButton(title: 'Simpan')
          ]
        ),
      ),
    );
  }
}
