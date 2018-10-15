# flutter_slide_drawer

A slide menu widget like QQ.

The drawer can open from left,right,top or bottom. You can use ```slideDirection: SlideDirection.top,``` to control the direction.

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

![from left](https://github.com/yumi0629/SlideDrawer/blob/master/slide01.gif)

![from left](https://github.com/yumi0629/SlideDrawer/blob/master/slide02.gif)

![from top](https://github.com/yumi0629/SlideDrawer/blob/master/slide03.gif)

