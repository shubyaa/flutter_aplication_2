import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/ObjectModel.dart';

TextStyle style = TextStyle(
  color: Colors.white,
  fontSize: 20,
);

TextStyle styleRed = TextStyle(
  color: Colors.red,
  fontSize: 20,
);

class ObjectModelList extends StatefulWidget {
  final ObjectModel model;
  ObjectModelList({Key? key, required this.model}) : super(key: key);

  @override
  State<ObjectModelList> createState() => _ObjectModelListState();
}

class _ObjectModelListState extends State<ObjectModelList> {
  bool is_positve() {
    if (widget.model.priceRange > 0) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "HDFC bank",
              style: style,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    widget.model.close.toString(),
                    style: style,
                  ),
                  Text(
                    widget.model.priceRange.toString() +
                        " (" +
                        widget.model.priceChangePercent.toString() +
                        ")%",
                    style: is_positve() ? style : styleRed,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "High",
                        style: style,
                      ),
                      Text(
                        widget.model.high.toString(),
                        style: style,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Low",
                        style: style,
                      ),
                      Text(
                        widget.model.low.toString(),
                        style: style,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Volume",
                        style: style,
                      ),
                      Text(
                        widget.model.volume.toString(),
                        style: style,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Open",
                        style: style,
                      ),
                      Text(
                        widget.model.open.toString(),
                        style: style,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Close",
                        style: style,
                      ),
                      Text(
                        widget.model.close.toString(),
                        style: style,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
