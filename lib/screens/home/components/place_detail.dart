import 'package:flutter/cupertino.dart';
import 'package:ggupot/models/place.dart';
import 'package:ggupot/theme.dart';

class PlaceDetail extends StatelessWidget {
  const PlaceDetail({ Key? key, required this.place }) : super(key: key);
  final Place place;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(place.name, style: textTheme().headline1),
          const SizedBox(height: 4.0),
          Text(
            place.address, style: textTheme().bodyText2,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            maxLines: 1,
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            height: 24,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffEBF7FE),
                borderRadius: BorderRadius.circular(4)
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(width: 4),
                  const Icon(CupertinoIcons.placemark, size: 16, color: Color(0xff62AFE2)),
                  const SizedBox(width: 2),
                  Text(place.distance, style: textTheme().subtitle2),
                  const SizedBox(width: 6)
                ],
              ),
            )
          ),
          const SizedBox(height: 8)
        ],
      ),
      
    );
  }
}