
import 'package:counter_app/viewModels/counter_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("mvvm counter")),

      body: Center(
        child: Consumer<CounterViewmodel>(
          builder: (context, vm, child) {
            return Text(
              vm.count.toString(),
              style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "Plus",
            onPressed: () {
              context.read<CounterViewmodel>().increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 15,),

          FloatingActionButton(
            heroTag: "minus",
            onPressed: () {
              context.read<CounterViewmodel>().decrement();
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 15,),

          FloatingActionButton(
            heroTag: "Plus",
            onPressed: () {
              context.read<CounterViewmodel>().reset();
            },
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(height: 15,)
        ],
      ),
    );
  }
}