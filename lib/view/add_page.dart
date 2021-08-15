import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task3_flutter/controller/add_controller.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Cart'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 1.5,
              child: Add(),
            ),
            GetX<AddController>(builder: (controller) {
              return Text(
                'Total: ${controller.totalAmount}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              );
            })
          ],
        ));
  }
}

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AddController _addController = Get.find();
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _addController.menuItem.length,
        itemBuilder: (BuildContext context, int index) {
          var item = _addController.menuItem[index];
          return InkWell(
              child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 70,
                child: Card(
                    color: Colors.blue,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(15),
                            child: Text('${item.name}',
                                overflow: TextOverflow.ellipsis, maxLines: 2)),
                        Padding(
                            padding: EdgeInsets.all(15),
                            child: Text('${item.price.toString()}',
                                overflow: TextOverflow.ellipsis, maxLines: 2)),
                      ],
                    )),
              ),
            ],
          ));
        });
  }
}
