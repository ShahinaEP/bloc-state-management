import 'package:flutter/material.dart';
import 'package:social_media_audio_recorder/social_media_audio_recorder.dart';
import 'package:voice_message_package/voice_message_package.dart';
class SocialMedia extends StatefulWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> with SingleTickerProviderStateMixin  {

  AnimationController? controller;
  bool play = false;
  String filepath = "";

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("social_media"),
      ),

    body: SafeArea(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    filepath != ""
    ? Expanded(
    child: Column(
    children: [
    VoiceMessage(
    audioSrc: filepath,
      me: true,
    ),
    ],
    ),
    )
        :
    Expanded(child: Container()),
    Row(
    children: [
    Expanded(
    child: Padding(
    padding: const EdgeInsets.only(left: 19),
    child: Container(
    height: 55,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white.withOpacity(0.2),
    ),
    child: const Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
    maxLines: null,
    decoration: InputDecoration(
    border: InputBorder.none,
    ),
    ),
    ),
    ),
    ),
    ),
    const SizedBox(width: 4),
    RecordButton(
    color: Colors.white,
    controller: controller!,
    onRecordEnd: (String value) {
    setState(() {

    filepath = value;
    });
    },
    ),
    ],
    ),
    ],
    ),
    ));
  }
}

// VoiceMessage({required String audioSrc, required bool me}) {
// }
