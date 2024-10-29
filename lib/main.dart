import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ina17_test/bloc/series_event.dart';
import 'package:flutter_ina17_test/bloc/series_state.dart';
import 'package:flutter_ina17_test/bloc/serius_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => SeriesBloc(),
        child: SeriesScreen(),
      ),
    );
  }
}

class SeriesScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  SeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Series App'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller,
                keyboardType: const TextInputType.numberWithOptions(),
                decoration: const InputDecoration(
                  labelText: 'Enter a number',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final n = int.tryParse(_controller.text) ?? 0;
                    context.read<SeriesBloc>().add(GenerateSeries1(n: n));
                  },
                  child: const Text('Series 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final n = int.tryParse(_controller.text) ?? 0;
                    context.read<SeriesBloc>().add(GenerateSeries2(n: n));
                  },
                  child: const Text('Series 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final n = int.tryParse(_controller.text) ?? 0;
                    context.read<SeriesBloc>().add(GenerateSeries3(n: n));
                  },
                  child: const Text('Series 3'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final n = int.tryParse(_controller.text) ?? 0;
                    context.read<SeriesBloc>().add(GenerateSeries4(n: n));
                  },
                  child: const Text('Series 4'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            BlocBuilder<SeriesBloc, SeriesState>(
              builder: (context, state) {
                return Text(
                  state.seriesResult,
                  style: const TextStyle(fontSize: 18),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
