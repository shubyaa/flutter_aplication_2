import 'package:flutter/material.dart';
import 'package:flutter_application_1/Lists/ObjectModelList.dart';
import 'package:flutter_application_1/Model/ObjectModel.dart';

class HomePage extends StatelessWidget {
  final Future<List<ObjectModel>> modelList;
  const HomePage({Key? key, required this.modelList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Stock Price"),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: FutureBuilder<List<ObjectModel>>(
              future: modelList,
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: ((context, index) {
                          ObjectModel model = snapshot.data!.elementAt(index);
                          return ObjectModelList(model: model);
                        }),
                      )
                    : Center(
                        child: Text("$snapshot.error"),
                      );
              },
            ),
          ),
        ),
      ),
    );
  }
}
