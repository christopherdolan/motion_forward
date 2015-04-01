#!/usr/bin/ruby

require 'pushbullet'

api_key_file = File.join(File.dirname(__FILE__), 'pushbullet_api.key')

if File.readable? api_key_file
	Pushbullet.set_access_token(File.read(api_key_file))
else
	STDERR.puts('Keyfile not found: %s', api_key_file)
	exit -2
end

event, filename = ARGV

if File.readable? filename
	Pushbullet::V2::Push.file(filename, "Motion: front door")
else
	STDERR.puts('File not found: %s', filename)
	exit -1
end
