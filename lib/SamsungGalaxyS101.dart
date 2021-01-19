import 'package:flutter/material.dart';
import './Component11.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SamsungGalaxyS101 extends StatelessWidget {
  SamsungGalaxyS101({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          SizedBox(
            width: 361.0,
            height: 105.0,
            child: Component11(),
          ),
          Transform.translate(
            offset: Offset(17.0, 32.7),
            child:
                // Adobe XD layer: 'reorder-24px' (group)
                SizedBox(
              width: 56.0,
              height: 40.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 55.6, 40.3),
                    size: Size(55.6, 40.3),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_f6erik,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(3.0, 5.0, 49.6, 30.3),
                    size: Size(55.6, 40.3),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_cxctje,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(91.0, 25.0),
            child:
                // Adobe XD layer: 'kerwz (2)' (shape)
                Container(
              width: 193.0,
              height: 48.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_f6erik =
    '<svg viewBox="0.0 0.0 55.6 40.3" ><path  d="M 0 0 L 55.57147216796875 0 L 55.57147216796875 40.28571319580078 L 0 40.28571319580078 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cxctje =
    '<svg viewBox="3.0 5.0 49.6 30.3" ><path transform="translate(0.0, 0.0)" d="M 3.000000238418579 26.63265037536621 L 52.57147216796875 26.63265037536621 L 52.57147216796875 22.30611991882324 L 3.000000238418579 22.30611991882324 L 3.000000238418579 26.63265037536621 Z M 3.000000238418579 35.28570938110352 L 52.57147216796875 35.28570938110352 L 52.57147216796875 30.95918083190918 L 3.000000238418579 30.95918083190918 L 3.000000238418579 35.28570938110352 Z M 3.000000238418579 17.97959136962891 L 52.57147216796875 17.97959136962891 L 52.57147216796875 13.6530590057373 L 3.000000238418579 13.6530590057373 L 3.000000238418579 17.97959136962891 Z M 3.000000238418579 4.999999046325684 L 3.000000238418579 9.326530456542969 L 52.57147216796875 9.326530456542969 L 52.57147216796875 4.999999046325684 L 3.000000238418579 4.999999046325684 Z" fill="#e5d609" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
