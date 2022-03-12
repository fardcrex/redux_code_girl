import 'package:flutter/material.dart';

import 'widgets/button_operation.dart';
import 'widgets/number_view.dart';

class RestarPage extends StatelessWidget {
  const RestarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const SizedBox.shrink(),
        title: const Text('Restar Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            _GoToSumaPageButton(),
            NumberView(number: 0),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
