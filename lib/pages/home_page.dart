import 'package:flutter/material.dart';

import '../data.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

///------------------------------------------------------

class _HomePageState extends State<HomePage> {
  double? _deviceHeight, _deviceWidth;

  var _selectedGame;

  @override
  void initState() {
    super.initState();
    _selectedGame = 0;
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          _featuredGamesWidget(),
          _grandientBoxWidget(),
          _topLayerWidget(),
        ],
      ),
    );
  }

//picture cursol slider
  Widget _featuredGamesWidget() {
    return SizedBox(
      height: _deviceHeight! * 0.50,
      width: _deviceWidth,
      child: PageView(
        //change slide based on info
        onPageChanged: (_index) {
          setState(() {
            _selectedGame = _index;
          });
        },
        scrollDirection: Axis.horizontal,
        children: featuredGames.map(
          (_game) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(_game.coverImage.url),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }

  Widget _grandientBoxWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: _deviceHeight! * 0.80,
        width: _deviceWidth!,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(35, 45, 59, 1.0),
              Colors.transparent,
            ],
            stops: [0.65, 1.0],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }

  Widget _topLayerWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: _deviceWidth! * 0.05, vertical: _deviceHeight! * 0.005),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _topBarWidget(),
          _featuredGamesInfoWidget(),
        ],
      ),
    );
  }

  Widget _topBarWidget() {
    return SizedBox(
      height: _deviceHeight! * 0.13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: _deviceWidth! * 0.03,
              ),
              const Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _featuredGamesInfoWidget() {
    return SizedBox(
      height: _deviceHeight! * 0.12,
      width: _deviceWidth!,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            featuredGames[_selectedGame].title,
            maxLines: 2,
            style: TextStyle(
              fontSize: _deviceHeight! * 0.040,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: featuredGames.map((_game) {
              double _circleRadius = _deviceHeight! * 0.004;
              return Container(
                height: _circleRadius * 2,
                width: _circleRadius * 2,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(100)),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
