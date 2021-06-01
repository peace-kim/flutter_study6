import 'package:flutter/material.dart';
import 'package:flutter_study6_bloc_provider/src/provider/bottom_navigation_provider.dart';
import 'package:flutter_study6_bloc_provider/src/provider/count_provider.dart';
import 'package:flutter_study6_bloc_provider/src/ui/CountHomeWidget.dart';
import 'package:flutter_study6_bloc_provider/src/ui/movie_list_widget.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  // Home({Key? key}) : super(key: key);

  // CountProvider _countProvider;
  // BottomNavigationProvider _bottomNavigationProvider;

  dynamic _countProvider = new CountProvider();
  dynamic _bottomNavigationProvider = new BottomNavigationProvider();

  Widget _navigationBody() {
    switch (_bottomNavigationProvider.currentPage){
      case 0:
        return CountHomeWidget();
      case 1:
        return MovieListWidget();
        break;
    }
    return Container();
  }

  Widget _bottomNavigationBarWidget() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movie'),
      ],
      currentIndex: _bottomNavigationProvider.currentPage,
      selectedItemColor: Colors.red,
      onTap: (index) {
        _bottomNavigationProvider.updateCurrentPage(index);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // _countProvider = Provider.of<CountProvider>(context, listen: false);
    _bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context,);

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('provider sample'),
      // ),
      body: _navigationBody(),
      bottomNavigationBar: _bottomNavigationBarWidget(),
    );
  }
}
