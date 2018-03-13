import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../lib/flutter_advanced_networkimage.dart';
import '../../lib/zoomable_widget.dart';
import '../../lib/transition_to_image.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Example',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Flutter Advanced Network Image Example'),
        ),
        body: new ZoomableWidget(
          minScale: 0.3,
          maxScale: 2.0,
          child: new TransitionToImage(
            new AdvancedNetworkImage(
              'https://i.nhentai.net/galleries/1175501/3.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
