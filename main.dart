
import 'package:flutter/material.dart';
// import 'package:myapp/ui/produk_form.dart';
import 'package:myapp/ui/produk_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProdukPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
  
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:myapp/ui/produk_detail.dart';
// import 'package:myapp/ui/produk_form.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Aplikasi Produk',
//       theme: ThemeData(
//         // Skema warna abu-abu
//         primarySwatch: Colors.grey,
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.grey,
//           primary: Colors.grey[800]!, // Warna primer (gelap)
//           onPrimary: Colors.white, // Warna teks di atas warna primer
//           secondary: Colors.grey[600]!, // Warna sekunder
//           onSecondary: Colors.black, // Warna teks di atas warna sekunder
//           background: Colors.grey[200]!, // Warna latar belakang
//           onBackground: Colors.black, // Warna teks di atas latar belakang
//           surface: Colors.grey[300]!, // Warna permukaan (seperti kartu)
//           onSurface: Colors.black, // Warna teks di atas permukaan
//         ),
//         scaffoldBackgroundColor: Colors.grey[200], // Warna latar belakang Scaffold
//         appBarTheme: AppBarTheme(
//           color: Colors.grey[800], // Warna latar belakang AppBar
//         ),
        
//         buttonTheme: ButtonThemeData(
//           buttonColor: Colors.grey[800], // Warna latar belakang tombol
//           textTheme: ButtonTextTheme.primary, // Warna teks tombol
//         ),
//       ),
//       home: ProdukPage(),
//     );
//   }
// }

// class ProdukPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _ProdukPageState();
// }

// class _ProdukPageState extends State<ProdukPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Data Produk'),
//         centerTitle: true,
//         actions: [
//           GestureDetector(
//             child: const Icon(Icons.add),
//             onTap: () async {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const ProdukForm()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: ListView(
//         children: const [
//           ItemProduk(
//             kodeProduk: "A1",
//             namaProduk: "Komputer",
//             harga: 3500000,
//           ),
//           ItemProduk(
//             kodeProduk: "A2",
//             namaProduk: "Mouse",
//             harga: 125000,
//           ),
//           ItemProduk(
//             kodeProduk: "A3",
//             namaProduk: "Laptop Acer X3",
//             harga: 9999999,
//           ),
//           ItemProduk(
//             kodeProduk: "A4",
//             namaProduk: "Keyboard Mach",
//             harga: 150000,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ItemProduk extends StatelessWidget {
//   final String? kodeProduk;
//   final String? namaProduk;
//   final int? harga;

//   const ItemProduk({
//     Key? key,
//     this.kodeProduk,
//     this.namaProduk,
//     this.harga,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Card(
//         child: ListTile(
//           title: Text(namaProduk.toString()),
//           subtitle: Text(
//             'Rp ${harga?.toStringAsFixed(0) ?? '0'}', // Memformat harga
//           ),
//         ),
//       ),
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ProdukDetail(
//               kodeProduk: kodeProduk,
//               namaProduk: namaProduk,
//               harga: harga,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
