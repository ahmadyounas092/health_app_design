import 'package:flutter/material.dart';

class RowContainerUtil extends StatefulWidget {
  final String containerName;
  final List<Color> containerColor;

  const RowContainerUtil(
      {super.key, required this.containerName, required this.containerColor});

  @override
  State<RowContainerUtil> createState() => _RowContainerUtilState();
}

class _RowContainerUtilState extends State<RowContainerUtil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(35),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: LinearGradient(
              colors: widget.containerColor,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: Center(
        child: Text(
          widget.containerName,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ),
    );
  }
}
