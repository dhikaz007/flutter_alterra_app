import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';

class LessonContentPage extends StatefulWidget {
  const LessonContentPage({super.key});

  @override
  State<LessonContentPage> createState() => _LessonContentPageState();
}

class _LessonContentPageState extends State<LessonContentPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(AltaURL().firstVideoURL);
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
            Row(
              children: [
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
              ],
            ),
          ],
        );
      },
    );
  }
}
