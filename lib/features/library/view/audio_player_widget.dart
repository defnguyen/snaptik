import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:snaptik/config/app_constants.dart';

class AudioPlayerWidget extends StatefulWidget {
  final String audioPath;
  final String? title;

  const AudioPlayerWidget({super.key, required this.audioPath, this.title});

  @override
  State<AudioPlayerWidget> createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  PlayerState _playerState = PlayerState.stopped;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  StreamSubscription? _durationSubscription;
  StreamSubscription? _positionSubscription;
  StreamSubscription? _playerCompleteSubscription;
  StreamSubscription? _playerStateChangeSubscription;
  StreamSubscription? _playerErrorSubscription;

  bool _isSourceSet = false;

  bool get _isPlaying => _playerState == PlayerState.playing;
  bool get _isPaused => _playerState == PlayerState.paused;

  @override
  void initState() {
    super.initState();
    print("AudioPlayerWidget: initState for path: ${widget.audioPath}");
    _initAudioPlayerListeners();
    _setSource(); // Attempt to set source on init
  }

  void _initAudioPlayerListeners() {
    _playerStateChangeSubscription =
        _audioPlayer.onPlayerStateChanged.listen((state) {
      print("AudioPlayerWidget: PlayerStateChanged: $state");
      if (mounted) setState(() => _playerState = state);
      if (state == PlayerState.playing) {
        // If player spontaneously starts playing (e.g. autoPlay after setSource, though we don't use it)
        // ensure duration is fetched if not already.
        _audioPlayer.getDuration().then((d) {
          if (d != null && mounted) setState(() => _duration = d);
        });
      }
    });

    _durationSubscription = _audioPlayer.onDurationChanged.listen((d) {
      print("AudioPlayerWidget: DurationChanged: $d");
      if (mounted) setState(() => _duration = d);
    });

    _positionSubscription = _audioPlayer.onPositionChanged.listen((p) {
      // No print here, too noisy
      if (mounted) setState(() => _position = p);
    });

    _playerCompleteSubscription = _audioPlayer.onPlayerComplete.listen((event) {
      print("AudioPlayerWidget: PlayerComplete");
      if (mounted) {
        setState(() {
          _playerState = PlayerState.stopped; // Or completed, then to stopped
          _position = _duration; // Show end of track
        });
      }
    });

    // More specific error listener
    _playerErrorSubscription = _audioPlayer.onLog.listen((logMessage) {
      // This listener gets all logs, including errors.
      // You might need to parse logMessage to identify actual errors vs info.
      // For audioplayers versions that have a dedicated onError stream, use that.
      // The log shows "Audio Player Error: AudioEvent(...)" which seems to be from onLog or a generic event stream.
      // Let's assume an event stream for errors for now if `onLog` is too broad.
      // If using an older audioplayers version, error handling might be different.
      // The logs you provided suggest events are coming through a general stream.
      print("AudioPlayerWidget Log/Event: $logMessage");
      if (logMessage.toLowerCase().contains("error") ||
          logMessage.toLowerCase().contains("failed")) {
        if (mounted) {
          // Potentially set an error message state here to display in UI
          print("AudioPlayerWidget: Potential error from onLog: $logMessage");
        }
      }
    }, onError: (error) {
      // This is for stream errors, not player errors
      print("AudioPlayerWidget: Stream error on onLog: $error");
    });
  }

  Future<void> _setSource() async {
    print("AudioPlayerWidget: Attempting to set source: ${widget.audioPath}");
    try {
      final file = File(widget.audioPath);
      if (!await file.exists()) {
        print(
            "AudioPlayerWidget ERROR: File does not exist at path: ${widget.audioPath}");
        if (mounted)
          setState(() {
            _playerState = PlayerState.stopped; /* Set error state for UI */
          });
        return;
      }

      await _audioPlayer.setSource(DeviceFileSource(widget.audioPath));
      // Note: setSource might implicitly start preparation. Duration might be available shortly after.
      // The onDurationChanged listener will pick it up.
      if (mounted) {
        setState(() {
          _isSourceSet = true;
          // Don't auto-play here unless intended. User will tap play.
        });
      }
      print("AudioPlayerWidget: Audio source successfully set.");
    } catch (e) {
      print("AudioPlayerWidget: CATCH - Error setting audio source: $e");
      if (mounted)
        setState(() {
          _playerState = PlayerState.stopped; /* Set error state for UI */
        });
    }
  }

  @override
  void dispose() {
    print("AudioPlayerWidget: Disposing player for ${widget.audioPath}");
    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playerCompleteSubscription?.cancel();
    _playerStateChangeSubscription?.cancel();
    _playerErrorSubscription?.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _play() async {
    if (!_isSourceSet) {
        print("AudioPlayerWidget: Play called but source not set or failed to set.");
        await _setSource(); // Try setting source again if not set
        if (!_isSourceSet && mounted) { // If still not set after retry
            // Show error or do nothing
            print("AudioPlayerWidget: Failed to set source on play attempt.");
            return;
        }
    }
    print("AudioPlayerWidget: _play() called. Current state: $_playerState");
    try {
      await _audioPlayer.resume(); // resume() handles both play and resume from pause
      print("AudioPlayerWidget: Resume/Play command sent.");
    } catch (e) {
      print("AudioPlayerWidget: Error on _audioPlayer.resume(): $e");
    }
  }

  Future<void> _pause() async {
    print("AudioPlayerWidget: _pause() called.");
    try {
      await _audioPlayer.pause();
    } catch (e) {
      print("AudioPlayerWidget: Error on _audioPlayer.pause(): $e");
    }
  }

  Future<void> _stop() async {
    try {
      await _audioPlayer.stop();
      if (mounted)
        setState(() => _position = Duration.zero); // Reset position visually
    } catch (e) {
      print("Error stopping audio: $e");
    }
  }

  Future<void> _seek(Duration position) async {
    try {
      await _audioPlayer.seek(position);
    } catch (e) {
      print("Error seeking audio: $e");
    }
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor, // Use card color from theme
          borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            )
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Take minimum space needed
        children: [
          if (widget.title != null) ...[
            Text(
              widget.title!,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
          ],
          Slider(
            min: 0,
            max: _duration.inMilliseconds > 0 ? _duration.inMilliseconds.toDouble() : 1.0, // Avoid division by zero if duration is 0
            value: _position.inMilliseconds.toDouble().clamp(0.0, _duration.inMilliseconds.toDouble()),
            onChanged: (value) {
               final position = Duration(milliseconds: value.toInt());
               _seek(position);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(_formatDuration(_position)),
                Text(_formatDuration(_duration)),
              ],
            ),
          ),
          const SizedBox(height: 8),
          IconButton(
            icon: Icon(
              _playerState == PlayerState.playing
                  ? Icons.pause_circle_filled
                  : Icons.play_circle_filled,
              size: 50,
            ),
            color: Colors.blue,
            onPressed: !_isSourceSet ? null : () { // Disable button if source not set
              if (_playerState == PlayerState.playing) {
                _pause();
              } else {
                _play();
              }
            },
          ),
        ],
      ),
    );
  }
}
