import 'package:flutter/material.dart';
import 'package:flutter_responsive_course/media_query_test/item_widget.dart';
import 'package:flutter_responsive_course/media_query_test/responsive_service/size_extention.dart';

class MedaiQueryWidget extends StatelessWidget {
  const MedaiQueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var datalist = getMediaQueryData(context);
    var screenTextScaler = MediaQuery.textScalerOf(context);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Media Query'),
      ),
      body: ListView.builder(
        // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 2,
        // ),
        itemCount: datalist.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            height: 150.h,
            width: 200.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.primaries[index % Colors.primaries.length],
              shape: BoxShape.rectangle,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: ItemWidget(title: datalist[index]),
          );
        },
      ),
    );
  }
}
