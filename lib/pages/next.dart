import 'package:flutter/material.dart';
import 'package:provider_study/src/widgets/value.dart';

class Next extends StatelessWidget {
  const Next({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('next page'),
      ),
      body: const Center(
        child: ValueWidget(),
      ),
    );
  }
}
