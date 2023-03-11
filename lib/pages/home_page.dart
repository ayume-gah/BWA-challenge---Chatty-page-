import 'package:flutter/material.dart';
import 'package:ft_level1_tugas21/theme.dart';
import 'package:ft_level1_tugas21/widgets/chat_tile.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: bluecolor,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: greencolor,
        child: Icon(Icons.add, size: 28,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Image.asset('assets/images/profile_pic.png', 
                    height: 100, width: 100,),
                  SizedBox(height: 20,),
                  Text('Sabrina Carpenter',
                    style: TextStyle(fontSize: 20, color: whitecolor),),
                  SizedBox(height: 2,),  
                  Text('Travel Freelancer',
                    style: TextStyle(fontSize: 16, color: cyancolor),),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: whitecolor,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(40),),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Friends', style: titleTS,),
                        chattile(propict: 'assets/images/friend1.png', 
                                nama: 'Joshuer',
                                pesan: 'Sorry, you’re not my ty...',
                                waktu: 'Now',
                                belumbaca: true,),    
                        chattile(propict: 'assets/images/friend2.png', 
                                nama: 'Gabriella',
                                pesan: 'I saw it clearly and mig...',
                                waktu: '2:30',
                                belumbaca: false,), 
                        SizedBox(height: 30,),
                        Text('Groups', style: titleTS,),
                        chattile(propict: 'assets/images/icon_jf.png', 
                                nama: 'Jakarta Fair',
                                pesan: 'Why does everyone ca...',
                                waktu: '11:11',
                                belumbaca: false,), 
                        chattile(propict: 'assets/images/icon_a.png', 
                                nama: 'Angga',
                                pesan: 'Here here we can go...',
                                waktu: '7:11',
                                belumbaca: true,),
                        chattile(propict: 'assets/images/icon_b.png', 
                                nama: 'Bentley',
                                pesan: 'The car which does not...',
                                waktu: '7:11',
                                belumbaca: true,),
                      ],
                    ),
                  )  
                ],
              ),
            ),
          ],
        )
        ),
    );
  }
}