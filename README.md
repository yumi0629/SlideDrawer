# flutter_slide_drawer

A slide menu widget like QQ.

The drawer can open from left,right,top or bottom. You can use ```slideDirection: SlideDirection.top,``` to control the direction. Use ```_slideKey.currentState.openOrClose();```to open or close drawer freely.

Usage:
```
SlideStack(
      child: SlideContainer(
        key: _slideKey,
        child: Container(
         /// widget mian.
        ),
        slideDirection: SlideDirection.top,
        onSlide: onSlide,
        drawerSize: maxSlideDistance,
      ),
      drawer: Container(
        /// widget drawer.
      ),
    );
```
from left
![from left](https://github.com/yumi0629/SlideDrawer/blob/master/slide01.gif)

![from left](https://github.com/yumi0629/SlideDrawer/blob/master/slide02.gif)

from top
![from top](https://github.com/yumi0629/SlideDrawer/blob/master/slide03.gif)

