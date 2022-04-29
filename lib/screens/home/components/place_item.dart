
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ggupot/models/place.dart';
import 'package:ggupot/screens/home/components/place_detail.dart';

class PlaceItem extends StatelessWidget {
  const PlaceItem({ Key? key, required this.place }) : super(key: key);
  final Place place;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),  
        boxShadow: [
          BoxShadow(
            color: Color(0xffAAAAAA),
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(1, 1)
          ),
        ],
        
      ),
      child: Row(
        children: [
          Column(
              children: [
               Image.asset(
                 'assets/${place.image}',
                  width: 60,
                 ),
                SizedBox(
                  width: 60,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: IconButton(iconSize: 24
                      , color: Color(0xff62AFE2)
                      , icon: const Icon(CupertinoIcons.share)
                      , onPressed: (){}),
                    ),
                    Expanded(
                      flex: 1, 
                      child: IconButton(iconSize: 24
                      , color: Color(0xff999999)
                      , icon: const Icon(CupertinoIcons.delete)
                      , onPressed: (){})
                    )
                  ],
                ),
                )
            ],
          ),
          const SizedBox(width: 24),
          PlaceDetail(place: place)
        ],
      )
    );
  }
}