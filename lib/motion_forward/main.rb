require 'motion_forward/file'
require 'motion_forward/link'

auth
if @options[:file] ^ @options[:url]
	file if @options[:file]
	link if @options[:url]
else
	STDERR.puts "Please select exactly one action."
	exit -1
end
