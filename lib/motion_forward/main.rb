require 'motion_forward/file'
require 'motion_forward/link'

auth
if @options.include?(:path) ^ @options.include?(:url)
	file if @options[:path]
	link if @options[:url]
else
	STDERR.puts "Please select exactly one action."
	exit -1
end
