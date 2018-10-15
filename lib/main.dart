import 'package:flutter/material.dart';
import 'package:flutter_slide_drawer/wedget/slide_container.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: _Body(),
        ),
      );
}

class _Body extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<_Body> {
  double position = 0.0;

  double get maxSlideDistance => MediaQuery.of(context).size.width * 0.7;

  final GlobalKey<ContainerState> _slideKey = GlobalKey<ContainerState>();

  void onSlide(double position) {
    setState(() => this.position = position);
  }

  @override
  Widget build(BuildContext context) {
    return SlideStack(
      child: SlideContainer(
        key: _slideKey,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * (1 - position / 5),
//          height: MediaQuery.of(context).size.height,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Colors.cyan,
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {
                _slideKey.currentState.openOrClose();
              },
              child: Text('Open'),
            ),
          ),
        ),
        slideDirection: SlideDirection.left,
        onSlide: onSlide,
        drawerSize: maxSlideDistance,
        transform: Matrix4.translationValues(
            0.0, MediaQuery.of(context).size.height * position / 10, 0.0),
      ),
      drawer: Container(
        color: Colors.amberAccent,
      ),
    );
  }
}
