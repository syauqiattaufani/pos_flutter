// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart' as p;
// import 'package:sqlite_wrapper/sqlite_wrapper.dart';
//
// class ConnectDb extends StatefulWidget {
//   const ConnectDb({Key? key}) : super(key: key);
//
//   @override
//   State<ConnectDb> createState() => _ConnectDbState();
// }
//
// class _ConnectDbState extends State<ConnectDb> {
//   static var sqlWrapper;
//
//   initDB() async {
//     final docDir = Directory("/home/dev/Downloads/pos");
//
//     if (!await docDir.exists()) {
//       await docDir.create(recursive: true);
//     }
//     await SQLiteWrapper().openDB(p.join(docDir.path, "cashier_dbf.sql"));
//     print("Berhasil");
//   }
//
//   final Map? userMap = sqlWrapper.query(
//   "SELECT * FROM chasier_dbf WHERE code = '007025'",
//   singleResult: true);
//
//   Stream userStream = SQLiteWrapper().watch("SELECT * FROM users",
//       fromMap: User.fromMap,
//       tables: ["users"]);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           child: MaterialButton(
//             onPressed: () {
//               setState(() {
//                 userMap;
//               });
//             },
//             child: Text(
//               "Klik Ini"
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
