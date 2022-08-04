import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  Future getData() async{
    var resp=http.get(Uri.parse('https://phptravels.net/api/api/main/app?appKey=phptravels&lang=en&currency=usd'));
    print(resp);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
