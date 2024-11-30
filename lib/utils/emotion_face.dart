import 'package:flutter/material.dart';

class EmotionFace extends StatelessWidget {
  final String emotionFace;
  const EmotionFace({super.key, required this.emotionFace});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.blue[400], borderRadius: BorderRadius.circular(14)),
        child: Center(
          child: Text(emotionFace, style: TextStyle(fontSize: 28),),
        ));
  }
}
