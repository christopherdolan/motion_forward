$:.push File.expand_path("../lib", __FILE__)
require "motion_forward/version"

Gem::Specification.new do |s|
	s.name          = "motion_forward"
	s.version       = MotionForward::VERSION
	s.platform      = Gem::Platform::RUBY
	s.authors       = ["Chris Dolan"]
	s.email         = ["aelien27@gmail.com"]
	s.summary       = "A handy script for forwarding motion capture events to PushBullet"
	s.description   = "What began as a purpose-built script is now creeping into a general PushBullet CLI client."

	s.files         = `git ls-files`.split("\n")
	s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
	s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
	s.require_paths = ["lib"]
end
