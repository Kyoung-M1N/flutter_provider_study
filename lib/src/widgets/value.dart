import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_study/src/providers/value_provider.dart';

class ValueWidget extends StatelessWidget {
  const ValueWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<Value>(
        builder: (context, value, child) {
          return Text(value.num.toString());
        },
      ),
    );
  }
}
