#!/usr/bin/ruby

require 'pushbullet'

api_key_file = File.join(File.dirname(__FILE__), 'pushbullet_api.key')

puts "Setting access token."
if File.readable? api_key_file
	Pushbullet.set_access_token(File.read(api_key_file))
	puts "Access token set."
else
	STDERR.puts("Keyfile not found: #{api_key_file}")
	exit -2
end

event_num = (' #' + ARGV.first) || ''

Pushbullet::V2::Push.link("Motion: front door", "Event#{event_num}: Movement has been detected at the front door." , "http://swamp.climbup.me:13371")
puts "All devices alerted."
