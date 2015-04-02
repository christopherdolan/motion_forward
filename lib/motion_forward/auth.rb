def auth
	puts "Setting access token."
	if File.readable?(@options[:key])
		puts "Reading key from file at #{@options[:key]}"
		@options[:key] = File.read @options[:key]
		Pushbullet.set_access_token @options[:key]
		puts "Access token set."
	else
		STDERR.puts "File not accessbile: #{@options[:key]}"
		exit -1
	end
end
