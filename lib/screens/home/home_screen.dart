import 'package:flutter/material.dart';
import 'package:ggupot/screens/home/home_body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold (
          appBar: AppBar(title: Text("")),
          body: HomeBody()
        ),
      );
  }
}

    