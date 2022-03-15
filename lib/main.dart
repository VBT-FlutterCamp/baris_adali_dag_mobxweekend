import 'package:flutter/material.dart';

import 'feature/store/view/store_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: StoreView());
  }
}
