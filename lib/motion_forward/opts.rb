require 'optparse'

@options = {
	:key => File.join(Dir.home, ".pushbullet_api.key")
}

OptionParser.new do |opts|
	opts.banner = "Usage: motion_forward [options]"

	opts.on("-k", "--key KEY", "PushBullet API key [string or path]") do |k|
		@options[:key] = k
	end

	opts.on("-e", "--event NUM", "Event number") do |e|
		@options[:event] = e
	end

	opts.on("-f", "--file FILE", "File to send") do |f|
		@options[:path] = f
	end

	opts.on("-u", "--url URL", "Link to send") do |u|
		@options[:url] = u
	end
end.parse!
