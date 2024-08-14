import 'package:myapp/ui/produk_detail.dart';
import 'package:myapp/ui/produk_form.dart';
import 'package:flutter/material.dart';

class ProdukPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Data Produk'),
        centerTitle: true,
        // Bagian Warna
        
        // Akhir Warna
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProdukForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: const [
          ItemProduk(
            kodeProduk: "A1",
            namaProduk: "Komputer",
            harga: 3500000,
          ),
          ItemProduk(
            kodeProduk: "A2",
            namaProduk: "Mouse",
            harga: 125000,
          ),
          ItemProduk(
            kodeProduk: "A3",
            namaProduk: "Laptop Acer X3",
            harga: 9999999,
          ),
          ItemProduk(
            kodeProduk: "A4",
            namaProduk: "Keyboard Mach",
            harga: 150000,
          ),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({Key? key, this.kodeProduk, this.namaProduk, this.harga})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProdukDetail(
                      kodeProduk: kodeProduk,
                      namaProduk: namaProduk,
                      harga: harga,
                    )));
      },
    );
  }
}
