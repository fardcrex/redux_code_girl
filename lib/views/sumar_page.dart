import 'package:flutter/material.dart';

import 'restar_redux.dart';
import 'widgets/button_operation.dart';

import 'widgets/floating_increment.dart';
import 'widgets/number_view.dart';

class SumarPage extends StatelessWidget {
  const SumarPage({Key? key, required this.title, required this.counter}) : super(key: key);
  final String title;
  final int counter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const _GoToRestarPageButton(),
            NumberView(number: counter),
          ],
        ),
      ),
      floatingActionButton: const FloatingIncrement(),
    );
  }
}

class _GoToRestarPageButton extends StatelessWidget {
  const _GoToRestarPageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonOperation(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const RestarRedux()));
      },
      text: 'Ir a restar page',
    );
  }
}
