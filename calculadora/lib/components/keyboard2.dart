import 'package:flutter/material.dart';
import 'button_row.dart';
import 'button.dart';

class Keyboard2 extends StatelessWidget {

  final void Function(String) cb;

  Keyboard2(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.operation(text: 'log', color: Button.DARK, cb: cb),
            Button.operation(text: '^', color: Button.DARK, cb: cb),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button(text: 'Save', cb: cb),
            Button(text: 'Load', cb: cb),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button.operation(text: '=', cb: cb),
          ]),
        ],
      ),
    );
  }
}
