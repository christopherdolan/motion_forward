def file
	puts "Event Number: #{@options[:event]}"
	puts "Filename: #{@options[:file]}"

	if File.readable? filename
		Pushbullet::V2::Push.file(@options[:file], "Event ##{@options[:event]}: front door")
		puts "File #{@options[:file]} pushed to all devices."
	else
		STDERR.puts("File not found: #{@options[:file]}")
		exit -1
	end
end
