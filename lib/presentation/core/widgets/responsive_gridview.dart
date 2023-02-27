import 'package:flutter/material.dart';

class ResponsiveGridView extends StatelessWidget {
  const ResponsiveGridView({Key? key,this.minCount=1,this.maxCount=2,this.itemHeight=70,required this.items,required this.itemBuilder}) : super(key: key);
  final int minCount;
  final int maxCount;
  final int itemHeight;
  final List<dynamic> items;
  final Widget Function(dynamic) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        return GridView.builder(gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: constraints.maxWidth >
              600
              ? maxCount
              : minCount,
          mainAxisExtent: itemHeight.toDouble(),
          crossAxisSpacing: 10,
        ),shrinkWrap:true,itemCount:items.length, itemBuilder: (context,index){
          return itemBuilder(items[index]);
        });
      },

    );
  }
}
