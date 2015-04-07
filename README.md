[Motion Forward](https://github.com/climbupthewalls/motion_forward) is a little project I started to add [Pushbullet](http://pushbullet.com) support to my [Motion](http://www.lavrsen.dk/foswiki/bin/view/Motion/WebHome)-enabled Raspberry Pi webcam.

Install via rubygems:
```
su **motion_user**
gem install motion_forward
```

Example Usage
=============
**In your motion.conf:**
```
on_movie_end motion_forward --event %v --file /path/to/motion_movie.avi

```
