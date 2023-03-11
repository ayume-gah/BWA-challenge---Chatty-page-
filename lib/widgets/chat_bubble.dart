import 'package:flutter/material.dart';
import 'package:ft_level1_tugas21/theme.dart';

class ChatBubbleLeft extends StatelessWidget {
  final String propict;
  final String pesan;
  final String waktu;

  ChatBubbleLeft({required this.propict, required this.pesan, 
          required this.waktu});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            propict,
            height: 40, width: 40,
          ),
          SizedBox(width: 12),
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              decoration: BoxDecoration(
                  color: Color(0XFFEBEFF3),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                      bottomRight: Radius.circular(22))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(pesan, style: titleTS.copyWith(fontWeight: FontWeight.w400),), 
                  Text(waktu, style: subtitleTS)],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ChatBubbleRight extends StatelessWidget {
  final String propict;
  final String pesan;
  final String waktu;

  ChatBubbleRight({required this.propict, required this.pesan, 
          required this.waktu});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, right: 30, left: 38),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              decoration: BoxDecoration(
                  color: whitecolor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                      bottomLeft: Radius.circular(22))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(pesan, style: titleTS.copyWith(fontWeight: FontWeight.w400),
                    textAlign: TextAlign.end,
                  ),
                  Text(waktu, style: subtitleTS,)
                ],
              ),
            ),
          ),
          SizedBox(width: 12),
          Image.asset(
            propict,
            height: 40, width: 40,
          ),
        ],
      ),
    );
  }
}