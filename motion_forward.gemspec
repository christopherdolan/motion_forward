$:.push File.expand_path("../lib", __FILE__)
require "motion_forward/version"

Gem::Specification.new do |s|
  s.name          = "motion_forward"
  s.version       = MotionForward::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Chris Dolan"]
  s.email         = ["aelien27@gmail.com"]
  s.homepage      = "https://rubygems.org/gems/motion_forward"
  s.summary       = "Motion Forward is a little project I started to add Pushbullet support to my Motion-enabled Raspberry Pi webcam."
  s.description   = "Motion Forward is a little project I started to add Pushbullet support to my Motion-enabled Raspberry Pi webcam."
  s.license       = "GPL-3.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
