import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class _ButterFlyAssetVideo extends StatefulWidget {
  @override
  _ButterFlyAssetVideoState createState() => _ButterFlyAssetVideoState();
}

class _ButterFlyAssetVideoState extends State<_ButterFlyAssetVideo> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      "https://r2---sn-npoeen76.googlevideo.com/videoplayback?expire=1597939885&ei=TUw-X_6XI7SZ8QO59pioCw&ip=223.204.153.251&id=o-AGD6iwRDbYKDEIe2KFruCbXLfigDtQ0T0H_RPaNn9v2M&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&gir=yes&clen=5058307&ratebypass=yes&dur=60.023&lmt=1592919909788922&fvip=7&c=WEB&txp=6216222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgB6s7qWKKvgyWEyzS1a-I5XupU7cPZgbYIeUjwef3GzMCIBelOV5SS6SmaShn7mZC1z3Kb43HOEQMKjGwIwe_6xJU&video_id=oor2U_nTE6I&title=Flutter+%E2%80%93+The+Future+Of+Mobile+Application+-+Mr.+Vimal+Daga+-+The+World+Record+Holder&rm=sn-w5nuxa-3qul7l,sn-w5nuxa-c33ey7k&req_id=628e10157014a3ee&redirect_counter=3&cm2rm=sn-30al77l&cms_redirect=yes&mh=dL&mip=106.193.213.96&mm=34&mn=sn-npoeen76&ms=ltu&mt=1597918169&mv=m&mvi=2&pl=22&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgCp2lEqHyaqwmcXx_zFBM_TrceqIXP7tZq1np0Aca9BUCIDVZ4IV0EW9jspYMaWFqfW596VzgEgLg6aH0HREDgraP",
    );

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              VideoPlayer(_controller),
              _PlayPauseOverlay(controller: _controller),
              VideoProgressIndicator(_controller, allowScrubbing: true),
            ],
          ),
        ),
      ),
    );
  }
}

class _PlayPauseOverlay extends StatelessWidget {
  const _PlayPauseOverlay({Key key, this.controller}) : super(key: key);

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: Duration(milliseconds: 50),
          reverseDuration: Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 100.0,
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
      ],
    );
  }
}

class online_v extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/bg.jpg",
          ),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
            Colors.blueAccent.shade100,
            BlendMode.plus,
          ),
        ),
      ),
      child: Column(
        children: [
          _ButterFlyAssetVideo(),
        ],
      ),
    );
  }
}
