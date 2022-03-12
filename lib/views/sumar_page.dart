import 'package:flutter/material.dart';
import 'widgets/button_operation.dart';

import 'widgets/number_view.dart';
import 'restar_page.dart';

class SumarPage extends StatefulWidget {
  const SumarPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SumarPage> createState() => _SumarPageState();
}

class _SumarPageState extends State<SumarPage> {
  int _counter = 0;

  void _incrementCounter() => setState(() => _counter++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const _GoToRestarPageButton(),
            NumberView(number: _counter),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _GoToRestarPageButton extends StatelessWidget {
  const _GoToRestarPageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonOperation(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const RestarPage()));
      },
      text: 'Ir a restar page',
    );
  }
}
