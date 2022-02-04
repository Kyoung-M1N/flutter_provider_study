import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_study/pages/next.dart';
import 'package:provider_study/src/widgets/value.dart';
import 'package:provider_study/src/providers/value_provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Value _value = Provider.of<Value>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('provider study'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ValueWidget(),
            const SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Next())),
                child: const Text('Go to next'))
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                _value.add();
              },
            ),
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                _value.remove();
              },
            ),
          ],
        ),
      ),
    );
  }
}
