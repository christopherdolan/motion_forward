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

event_num, filename = ARGV

puts "Event Number: #{event_num}"
puts "Filename: #{filename}"

if File.readable? filename
	Pushbullet::V2::Push.file(filename, "Event ##{event_num}: front door")
	puts "File #{filename} pushed to all devices."
else
	STDERR.puts("File not found: #{filename}")
	exit -1
end
