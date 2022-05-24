import 'package:flutter/material.dart';

class NotFoundedScreen extends StatelessWidget {
  const NotFoundedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 404')),
      body: const Center(
        child: Text('Not Founded Pages'),
      ),
    );
  }
}
