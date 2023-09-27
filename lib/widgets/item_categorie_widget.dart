import 'package:flutter/material.dart';

class itemCategorieWidget extends StatelessWidget {

  final String title;
  final Icon icon;


  const itemCategorieWidget({
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          MediaQuery.sizeOf(context).width * 0.40,
      height:
          MediaQuery.sizeOf(context).height * 0.20,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Color(0xFFBDD2F1),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            icon,
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}