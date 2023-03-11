import 'package:flutter/material.dart';
import 'package:ft_level1_tugas21/theme.dart';
import 'package:ft_level1_tugas21/widgets/chat_bubble.dart';


class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: whitecolor,
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type message',
              style: subtitleTS,
            ),
            Icon(Icons.send)
          ],
        ),
      );
    }
    
    return Scaffold(
      floatingActionButton: chatInput(),
      body: SafeArea(
          child: Center(
              child: Column(
                children: [
                  Container( //
                    decoration: BoxDecoration(
                    color: whitecolor,
                    borderRadius:  
                     BorderRadius.vertical(bottom: Radius.circular(30))),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        children:[
                          Image.asset(
                            'assets/images/icon_jf.png',
                            height: 55, width: 55),
                          SizedBox(width: 12),
                          Column(
                            children: [
                              Text('Jakarta Fair', style: titleTS,
                                  textAlign: TextAlign.start,),
                              Text('14,209 members',
                                style: subtitleTS, textAlign: TextAlign.start,)
                            ],
                          ),
                          Spacer(),
                          FloatingActionButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.call,
                              size: 18),
                            backgroundColor: greencolor,
                            mini: true,
                          ),
                        ],
                      ),
                    ),
                  ), 
                  SizedBox(height: 30),
                  ChatBubbleLeft(
                    propict: 'assets/images/friend1.png',
                    pesan: 'How are ya guys?',
                    waktu: '2:30',
                  ),
                  ChatBubbleLeft(
                    propict: 'assets/images/friend3.png',
                    pesan: 'Find here :P',
                    waktu: '3:11',
                  ),
                  ChatBubbleRight(
                    propict: 'assets/images/mine.png',
                    pesan:
                     'Thinking about how to deal with this client from hell...',
                    waktu: '22:08',
                  ),
                  ChatBubbleLeft(
                    propict: 'assets/images/friend2.png',
                    pesan: 'Love them',
                    waktu: '23:11',
                  ),
               
                ],
              ),
          ),
      ),
     );
  }
}