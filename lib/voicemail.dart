import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Voicemail extends StatefulWidget {
  const Voicemail({Key? key}) : super(key: key);

  @override
  State<Voicemail> createState() => _VoicemailState();
}

class _VoicemailState extends State<Voicemail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Voice Mail'),
      ),
    );
  }
}
