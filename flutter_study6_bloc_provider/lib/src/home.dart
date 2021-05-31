import 'package:flutter/material.dart';
import 'package:flutter_study6_bloc_provider/src/provider/count_provider.dart';
import 'package:flutter_study6_bloc_provider/src/ui/CountHomeWidget.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  // Home({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    
    CountProvider _countProvider;  
    _countProvider = Provider.of<CountProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('provider sample'),
      ),
      body: CountHomeWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              _countProvider.add();
            },
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              _countProvider.remove();
            },
          ),
        ],
      ),
    );
  }
}
