def file
	puts "Event Number: #{@options[:event]}"
	puts "Filename: #{@options[:path]}"

	if File.readable? filename
		Pushbullet::V2::Push.file(@options[:path], "Event ##{@options[:event]}: front door")
		puts "File #{@options[:path]} pushed to all devices."
	else
		STDERR.puts("File not found: #{@options[:path]}")
		exit -1
	end
end
