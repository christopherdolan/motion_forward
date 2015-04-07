[Motion Forward](https://github.com/climbupthewalls/motion_forward) is a little project I started to add [Pushbullet](http://pushbullet.com) support to my [Motion](http://www.lavrsen.dk/foswiki/bin/view/Motion/WebHome)-enabled Raspberry Pi webcam.

Install via rubygems (ex: as _motion_ user):
```
su motion
gem install motion_forward
```

Example Usage
=============
**In your motion.conf:**
```
on_movie_end motion_forward --event %v --file %f --key 000000000000000

```
