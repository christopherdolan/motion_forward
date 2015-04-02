def auth
	puts "Setting access token."
	if File.readable?(@options[:key])
		puts "Reading key from file at #{@options[:key]}"
		@options[:key] = File.read @options[:key]
	end
	Pushbullet.set_access_token @options[:key]
	puts "Access token set."
end
