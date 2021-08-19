import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'Bloc.dart';

SetURL(String url){
  audioPlayer
      .setAudioSource(ConcatenatingAudioSource(children: [
    AudioSource.uri(Uri.parse(url))
  ]))
      .catchError((error) {
    print("An error occured $error");
  });
}

Widget playerButton(PlayerState playerState,dynamic size) {

  // 1
  final processingState = playerState.processingState;
  if (processingState == ProcessingState.loading ||
      processingState == ProcessingState.buffering) {

    // 2
    return Container(
      margin: EdgeInsets.all(8.0),
      width: size,
      height: size,
      child: CircularProgressIndicator(),
    );
  } else if (audioPlayer.playing != true) {

    // 3
    return IconButton(
      icon: Icon(Icons.play_arrow),
      iconSize: size,
      onPressed: audioPlayer.play,
    );
  } else if (processingState != ProcessingState.completed) {

    // 4
    return IconButton(
      icon: Icon(Icons.pause),
      iconSize: size,
      onPressed: audioPlayer.pause,
    );
  } else {

    // 5
    return IconButton(
      icon: Icon(Icons.replay),
      iconSize: size,
      onPressed: () => audioPlayer.seek(Duration.zero,
          index: audioPlayer.effectiveIndices.first),
    );
  }
}