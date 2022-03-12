import 'package:flutter/material.dart';

import 'widgets/button_operation.dart';
import 'widgets/number_view.dart';

class RestarPage extends StatelessWidget {
  final int counter;
  final VoidCallback decrement;
  final VoidCallback increment;

  const RestarPage({Key? key, required this.counter, required this.decrement, required this.increment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const SizedBox.shrink(),
        title: const Text('Restar Page'),
        //   actions: const [FloatingIncrement(), SizedBox(width: 60)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const _GoToSumaPageButton(),
            NumberView(number: counter),
            TextButton(onPressed: increment, child: const Text('Incrementar')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: decrement,
        tooltip: 'Increment',
        child: const Icon(Icons.minimize),
      ),
    );
  }
}

class _GoToSumaPageButton extends StatelessWidget {
  const _GoToSumaPageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonOperation(
      onPressed: () {
        Navigator.pop(context);
      },
      text: 'Ir a Sumar page',
    );
  }
}
