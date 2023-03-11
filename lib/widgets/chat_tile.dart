import 'package:flutter/material.dart';
import 'package:ft_level1_tugas21/theme.dart';

class chattile extends StatelessWidget{
  final String propict;
  final String nama;
  final String pesan;
  final String waktu;
  final bool belumbaca;

  chattile({required this.propict, required this.nama, required this.pesan, 
          required this.waktu, required this.belumbaca});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(propict, height: 55, width: 55,),
          SizedBox(width: 12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nama, style: titleTS,),
              Text(pesan,
                 style: belumbaca 
                 ? subtitleTS.copyWith(color: textcolor, fontWeight: FontWeight.w400,)
                 : subtitleTS,),
            ],
          ),
          Spacer(),
          Text(waktu, style: subtitleTS,)
        ],
      ),
    );
  }
}