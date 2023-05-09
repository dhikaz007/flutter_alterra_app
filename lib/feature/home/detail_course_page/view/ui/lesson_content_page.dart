import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_primary_button.dart';
import '../../../../../utils/widgets/alta_text.dart';

class LessonContentPage extends StatefulWidget {
  const LessonContentPage({super.key});

  @override
  State<LessonContentPage> createState() => _LessonContentPageState();
}

class _LessonContentPageState extends State<LessonContentPage> {
  final videoURL =
      "https://www.youtube.com/watch?v=RuxJslog_iE&pp=ygUZbWF0ZXJpIHVpIHV4IHByZXNlbnRhdGlvbg%3D%3D";

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
