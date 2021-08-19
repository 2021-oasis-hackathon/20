// import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';
//
// class Player extends StatefulWidget {
//   @override
//   _PlayerState createState() => _PlayerState();
// }
//
// class _PlayerState extends State<Player> {
//   late AudioPlayer audioPlayer = AudioPlayer();
//   var url ="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/f7153491-1987-444c-9d53-b29e3e06b7f0/Lee_Mujin_%28%EC%9D%B4%EB%AC%B4%EC%A7%84%29_-_%EC%8B%A0%ED%98%B8%EB%93%B1_%28Traffic_light%29.mp3?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20210818%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20210818T134605Z&X-Amz-Expires=86400&X-Amz-Signature=f97449c054e46a6f50f8973739bab666d80109eb34570c7967cf41384007ce44&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Lee%2520Mujin%2520%28%25EC%259D%25B4%25EB%25AC%25B4%25EC%25A7%2584%29%2520-%2520%25EC%258B%25A0%25ED%2598%25B8%25EB%2593%25B1%2520%28Traffic%2520light%29.mp3%22";
//   @override
//   void initState() {
//     super.initState();
//
//     // Set a sequence of audio sources that will be played by the audio player.
//     SetURL(url)
//   }
//
//   @override
//   void dispose() {
//     audioPlayer.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: StreamBuilder<PlayerState>(
//           stream: audioPlayer.playerStateStream,
//           builder: (context, snapshot) {
//             final playerState = snapshot.data;
//             return _playerButton(playerState!);
//           },
//         ),
//       ),
//     );
//   }
//
//   void SetURL(String url){
//     audioPlayer.setAudioSource(ConcatenatingAudioSource(children: [AudioSource.uri(Uri.parse(url))])).catchError((error) {
//   print("An error occured $error");
//   });
//   }
//
//   Widget _playerButton(PlayerState playerState) {
//
//     // 1
//     final processingState = playerState.processingState;
//     if (processingState == ProcessingState.loading ||
//         processingState == ProcessingState.buffering) {
//
//       // 2
//       return Container(
//         margin: EdgeInsets.all(8.0),
//         width: 64.0,
//         height: 64.0,
//         child: CircularProgressIndicator(),
//       );
//     } else if (audioPlayer.playing != true) {
//
//       // 3
//       return IconButton(
//         icon: Icon(Icons.play_arrow),
//         iconSize: 64.0,
//         onPressed: audioPlayer.play,
//       );
//     } else if (processingState != ProcessingState.completed) {
//
//       // 4
//       return IconButton(
//         icon: Icon(Icons.pause),
//         iconSize: 64.0,
//         onPressed: audioPlayer.pause,
//       );
//     } else {
//
//       // 5
//       return IconButton(
//         icon: Icon(Icons.replay),
//         iconSize: 64.0,
//         onPressed: () => audioPlayer.seek(Duration.zero,
//             index: audioPlayer.effectiveIndices.first),
//       );
//     }
//   }
//
// }