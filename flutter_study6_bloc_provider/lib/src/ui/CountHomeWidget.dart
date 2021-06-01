import 'package:flutter/material.dart';
import 'package:flutter_study6_bloc_provider/src/components/view_count.dart';
import 'package:flutter_study6_bloc_provider/src/provider/count_provider.dart';
import 'package:provider/provider.dart';


class CountHomeWidget extends StatelessWidget {

  //declaration in a different way (dynamic ~) to avoid class made with Null
  dynamic _countProvider = CountProvider();

  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context, listen: false);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Provider'),
      ),
      body: ViewCountWidget(),
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



//  floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           IconButton(
//             icon: Icon(Icons.add),
//             onPressed: () {
//               _countProvider.add();
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.remove),
//             onPressed: () {
//               _countProvider.remove();
//             },
//           ),
//         ],
//       ),
