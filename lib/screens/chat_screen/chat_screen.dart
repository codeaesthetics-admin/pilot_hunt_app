// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:linx_uav/screens/chat_screen/open_chat.dart';
import 'package:linx_uav/widgets/color_remover.dart';

import '../../constants/colors.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  //final fireStore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kColorBG,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text("Chat"),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            onTap: (){

            },
            child: SizedBox(
                height: 25,
                width: 25,
                child: Icon(Icons.more_vert)),
          ),
        )],
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10, //constants.chat.length
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const OpenChat()));
                  },
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                            backgroundColor: Color(0xffD8D8D8)
                        ),
                        SizedBox(width: 15,),
                        Text(
                          "Obaid",
                          // constants.chat[index].name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 15,bottom: 10),
                    child: Text(
                      "Obaid",
                      // constants.chat[index].lastMessage,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  trailing: const Text(
                    "11:40 am",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  // leading: Image(
                  //     height: 60,
                  //     width: 60,
                  //     fit: BoxFit.cover,
                  //     image: AssetImage(
                  //         "assets/images/${constants.chat[index].image}")),
                ),
              ),
            );
          }),
    );
  }
}
