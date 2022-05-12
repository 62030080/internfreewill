import 'package:flutter/foundation.dart';
import 'package:project2/models/transaction.dart';

class TransactionProvider with ChangeNotifier {
  //ข้อมูล
  List<Transaction> transactions = [
    Transaction(name: 'Shoes', amount: 100, date: DateTime.now()),
    Transaction(name: 'Shirt', amount: 200, date: DateTime.now()),
    Transaction(name: 'Book', amount: 50, date: DateTime.now())
  ];
  //ดึงข้อมูล
  List<Transaction> get getTransactions {
    return transactions;
  }

  void addTransaction(Transaction statement) {
    transactions.add(statement);
  }

}