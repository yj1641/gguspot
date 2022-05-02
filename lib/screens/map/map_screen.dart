import 'dart:async';
import 'package:flutter/material.dart';
import 'package:naver_map_plugin/naver_map_plugin.dart';

class MapScreen extends StatelessWidget {
  MapScreen({Key? key}) : super(key: key);

  Completer<NaverMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: NaverMap(
      onMapCreated: _onMapCreated,
    ));
  }

  void _onMapCreated(NaverMapController controller) {
    if (_controller.isCompleted) _controller = Completer();
    _controller.complete(controller);
  }
}
