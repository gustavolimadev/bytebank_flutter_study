import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:bytebank/database/dao/contact_dao.dart';

Future<Database> getDatabase() async {
  final path = join(await getDatabasesPath(), 'bytebank.db');
    return openDatabase(path, onCreate: (db, version) {
      db.execute(ContactDao.tableSql);
    }, version: 1,
//   onDowngrade: onDatabaseDowngradeDelete;
    );

/*
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'bytebank.db');
    return openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE contact('
          'id INTEGER PRIMARY KEY, '
          'name TEXT, '
          'account_number INTEGER) ');
    }, version: 1,
    onDowngrade: onDatabaseDowngradeDelete,
    );
  });

 */
}

