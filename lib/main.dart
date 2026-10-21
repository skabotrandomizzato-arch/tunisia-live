import 'package:flutter/material.dart';
import 'package:just_audio_background/just_audio_background.dart';

import 'models.dart';
import 'screens/favorites_screen.dart';
import 'screens/news_screen.dart';
import 'screens/radio_screen.dart';
import 'screens/tv_screen.dart';
import 'services/catalog_service.dart';
import 'services/favorites.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await JustAudioBackground.init(
      androidNotificationChannelId: 'com.skander.tunisia_tv.audio',
      androidNotificationChannelName: 'Tounsi Live',
      androidNotificationOngoing: true,
    ).timeout(const Duration(seconds: 5));
  } catch (e) {
    debugPrint('Audio init fallito: $e');
  }
  runApp(const TounsiApp());
}