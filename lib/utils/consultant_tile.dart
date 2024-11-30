import 'package:flutter/material.dart';

class ConsultantTile extends StatefulWidget {
  final String avatar, title, subTitle;

  const ConsultantTile({
    super.key,
    required this.avatar,
    required this.title,
    required this.subTitle,
  });

  @override
  State<ConsultantTile> createState() => _ConsultantTileState();
}

class _ConsultantTileState extends State<ConsultantTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.5,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          contentPadding:
              EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
          tileColor: Colors.white,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              widget.avatar,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
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
