require 'motion_forward/file'
require 'motion_forward/link'

auth
if @options.include?(:file) ^ @options.include?(:url)
	file if @options[:file]
	link if @options[:url]
else
	STDERR.puts "Please select exactly one action."
	exit -1
end
