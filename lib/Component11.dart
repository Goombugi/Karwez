import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Component11 extends StatelessWidget {
  Component11({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 361.0, 105.0),
          size: Size(361.0, 105.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(295.0, 28.6, 48.6, 47.4),
          size: Size(361.0, 105.0),
          pinTop: true,
          fixedWidth: true,
          fixedHeight: true,
          child:
              // Adobe XD layer: 'search-24px' (group)
              Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 48.6, 47.4),
                size: Size(48.6, 47.4),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child: SvgPicture.string(
                  _svg_n2x78x,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(3.0, 3.0, 42.1, 40.9),
                size: Size(48.6, 47.4),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child: SvgPicture.string(
                  _svg_joh6fv,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

const String _svg_n2x78x =
    '<svg viewBox="0.0 0.0 48.6 47.4" ><path  d="M 0 0 L 48.5714111328125 0 L 48.5714111328125 47.42856979370117 L 0 47.42856979370117 L 0 0 Z" fill="#372f0f" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_joh6fv =
    '<svg viewBox="3.0 3.0 42.1 40.9" ><path  d="M 33.06104278564453 28.73495101928711 L 31.16118621826172 28.73495101928711 L 30.48781967163086 28.103271484375 C 32.8446044921875 25.43619728088379 34.26348495483398 21.97367668151855 34.26348495483398 18.20701599121094 C 34.26348495483398 9.808063507080078 27.26527404785156 3 18.63174057006836 3 C 9.998209953308105 3 3 9.808063507080078 3 18.20701599121094 C 3 26.6059684753418 9.998209953308105 33.41403198242188 18.63174057006836 33.41403198242188 C 22.50360488891602 33.41403198242188 26.06283187866211 32.0337028503418 28.80439758300781 29.74095153808594 L 29.45371627807617 30.39602279663086 L 29.45371627807617 32.2442626953125 L 41.47813415527344 43.91857147216797 L 45.06140899658203 40.43265533447266 L 33.06104278564453 28.73495101928711 Z M 18.63174057006836 28.73495101928711 C 12.64358234405518 28.73495101928711 7.80976676940918 24.03247261047363 7.80976676940918 18.20701599121094 C 7.80976676940918 12.38155937194824 12.64358234405518 7.679081439971924 18.63174057006836 7.679081439971924 C 24.61989974975586 7.679081439971924 29.45371627807617 12.38155937194824 29.45371627807617 18.20701599121094 C 29.45371627807617 24.03247261047363 24.61989974975586 28.73495101928711 18.63174057006836 28.73495101928711 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
