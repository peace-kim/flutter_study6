import 'package:flutter/material.dart';
import 'package:flutter_study6_bloc_provider/src/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build called');
    return Center(
      child: Consumer<CountProvider>(
        builder: (context, provider, child) {
          return Text(
            provider.count.toString(),
            // 'Count',
            style: TextStyle(fontSize: 80),
          );
        },
      ),
    );
  }
}
