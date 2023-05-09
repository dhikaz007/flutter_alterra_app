import 'package:flutter/material.dart';
import 'package:flutter_alterra_app/utils/constant/alta_spacing.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';
import '../../../../../utils/widgets/alta_text.dart';

class VideoContentPage extends StatefulWidget {
  const VideoContentPage({super.key});

  @override
  State<VideoContentPage> createState() => _VideoContentPageState();
}

class _VideoContentPageState extends State<VideoContentPage> {
  final videoURL =
      "https://www.youtube.com/watch?v=55NvZjUZIO8&pp=ygUTaW50cm9kdWN0aW9uIHVpIHV4IA%3D%3D";
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          aspectRatio: 16 / 9,
          controller: _controller,
        ),
        builder: (context, player) {
          return Column(
            children: [
              // some widgets
              player,
              //some other widgets
              const SizedBox(height: AltaSpacing.space36),
              Row(children: [
                Expanded(
                  child: AltaPrimaryButton(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.orange.shade700),
                    paddingVertical: AltaSpacing.space20,
                    paddingHorizontal: AltaSpacing.space28,
                    borderRadius: AltaBorderRadius.radius10,
                    onPressed: () {},
                    child: AltaText(
                      context: context,
                      text: 'COMPLETE',
                      style: AltaTextStyle.title2,
                      fontWeight: CustomFontWeight.bold,
                      color: AltaColor.white,
                    ),
                  ),
                ),
              ]),
            ],
          );
        });
  }
}
