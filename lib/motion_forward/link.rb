def link
	Pushbullet::V2::Push.link("Motion: front door", "Event ##{@options[:event]}: Movement has been detected at the front door." , @options[:url])
	puts "All devices alerted."
end
