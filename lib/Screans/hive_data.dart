import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HiveData extends StatefulWidget {
  const HiveData({super.key});

  @override
  State<HiveData> createState() => _HiveDataState();
}

class _HiveDataState extends State<HiveData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                Box box = Hive.box<String>('test');
                box.put(0, 'mohamed');
              },
              child: const Text('set data in hive'))
        ],
      ),
    );
  }
}
