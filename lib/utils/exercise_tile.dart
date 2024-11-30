import 'package:flutter/material.dart';

class ExerciseTile extends StatefulWidget {
  final Color iconContainerColor;
  final String title, subTitle;
  final IconData iconData;
  final Color iconColor;
  final void Function()? onTap;

  const ExerciseTile(
      {super.key,
      required this.iconContainerColor,
      required this.title,
      required this.subTitle,
      required this.iconData,
      required this.iconColor,
      required this.onTap});

  @override
  State<ExerciseTile> createState() => _ExerciseTileState();
}

class _ExerciseTileState extends State<ExerciseTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.5,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: ListTile(
          onTap: widget.onTap,
          leading: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: widget.iconContainerColor),
              child: Icon(
                widget.iconData,
                color: widget.iconColor,
              )),
          title: Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text(
            widget.subTitle,
            style: TextStyle(
                fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}
