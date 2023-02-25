import 'package:flutter/material.dart';
import 'package:goodbye_money/type/widgets.dart';

class Expenses extends WidgetWithTitle {
  const Expenses({super.key}) : super(title: "Expense");

  @override
  Widget build(BuildContext context) {
    return const Text('Expenses!');
  }
}
