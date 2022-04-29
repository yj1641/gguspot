import 'package:flutter/material.dart';
import 'package:ggupot/models/place.dart';
import 'package:ggupot/screens/home/components/place_item.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                },
                decoration: InputDecoration(
                    hintText: "어디로 놀러가시나요?",
                    prefixIcon: Icon(Icons.search, color: Color(0xffFF7088)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Color(0xffFF7088)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(color: Color(0xfffcdfe4)),
                    ),
                ),
              ),
          ),
          Expanded(child:  
            ListView.builder(
            itemBuilder: (context, index) {
              return PlaceItem(place: Place.placeList[index]);
            },
            itemCount: Place.placeList.length)
          )
        ],
      );
  }
}