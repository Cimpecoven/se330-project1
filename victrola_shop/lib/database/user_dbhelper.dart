import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:victrola_shop/models/account.dart';

import '../models/account.dart';

// Should be the database for all our account-business: including other tables for subclasses
class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._instance();
  
  // The global value for the current user: null if not logged in yet
  static Account? userInstance;

  static Database? _database; // The "?" means this value is nullable

  DatabaseHelper._instance();

  // This is an asynchronous function; Future means "when I get a response, I will pass it back; otherwise, be patient"
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }

    _database = await _initDB();
    return _database;
  }

  _initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'user.db'); // Fancy way to do string-concatination: not database-join
    var theDatabase = await openDatabase(path, version: 1, onCreate: _createDB);
    return theDatabase;
  }

  _createDB(Database database, int version) async {
    await database.execute('PRAGMA foreign_keys - ON'); // To make sure we can join our tables together
    await database.execute(
      // SQLite is not case-sensitive
      'CREATE TABLE Account( ' +
        // 'id INTEGER PRIMARY_KEY, ' +
        'email TEXT PRIMARY_KEY, ' +
        'password TEXT PRIMARY_KEY ) ' +
      
      // The table containing each and every cart item for every user
      // This is a one-to-many relationship: one account for many cartItems
      'CREATE TABLE CartItems( ' +
        // 'id INTEGER PRIMARY_KEY ' + 
        'email TEXT PRIMARY_KEY FOREIGN KEY(email) REFERENCES Account(email) ' +
        'password TEXT PRIMARY_KEY FOREIGN KEY(password) REFERENCES Account(password) ' +
        'productId PRIMARY_KEY INTEGER ' +
        'quantity INTEGER )'
      );
  }

  Future<void> insertAccountData(Account account) async {
    final client = await database;
    await client!.insert(
      'Account',
      account.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace
    );

    for (var cartItem in account.cart.entries) {

      Map<String, dynamic> sqlCartItem = {
        'email': account.email,
        'password': account.password,
        'quantity': cartItem.key,
        'productId': cartItem.value
      };

      await client!.insert(
        'CartItems',
        sqlCartItem,
        conflictAlgorithm: ConflictAlgorithm.replace
      );
    }
  }

  Future<Account?> getUserAccountData(String email, String password) async {
    final client = await database;
    final List<Map<String, dynamic>> accountMap = await client!.query('Account', where: 'email = ? AND password = ? ', whereArgs: [email, password]);
    if (accountMap.isEmpty)
    {
      // there wasn't a user with that data (yet), return null
      return null;
    }

    final Account account = Account.accountFromMap(accountMap.first); // Take the first because it should exist if we get to here
    final List<Map<String, dynamic>> cartItemsMapList = await client!.query('CartItems', where: 'email = ? AND password = ? ', whereArgs: [email, password]);
    account.cartFromMapList(cartItemsMapList);
    return account;
  }

  void deleteCartItem(int productType) async {
    final email = DatabaseHelper.userInstance!.email;
    final password = DatabaseHelper.userInstance!.password;
    final client = await database;
    await client!.delete('CartItems', where: 'productId = ? AND email = ? AND password = ? ', whereArgs: [productType, email, password]);
  }

  // Future<List<Map<String, dynamic>>> getEmployeeMapList() async {
  //   final client = await database;
  //   final List<Map<String, dynamic>> employeeMaps = await client!.query('Employee');
  //   // Alternative: await client!.rawQuery('SELECT * FROM Employee ...etc') ^same as above
  //   return employeeMaps;
  // }

  // Future<List<Employee>> getEmployeeList() async {
  //   final client = await database;
  //   final List<Map<String, dynamic>> employeeMapList = await getEmployeeMapList();
  //   final List<Employee> employeeList = employeeMapList.map((map) => Employee.fromMap(map)).toList();

  //   // Alternative for above function^ (in case it doesn't work)
  //   // final List<Employee> employeeList = [];
  //   // for (var employeeMap in employeeMapList) {
  //   //   employeeList.add(Employee.fromMap(employeeMap));
  //   // }

  //   return employeeList;
  // }
}