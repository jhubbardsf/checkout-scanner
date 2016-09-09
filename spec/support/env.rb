root = Pathname.new(__FILE__).parent.parent
ENV['PATH'] = "#{root.join('bin').to_s}#{File::PATH_SEPARATOR}#{ENV['PATH']}"

Aruba.configure do |config|
	config.before :command do |cmd|
		puts "About to run '#{cmd}'"
	end

	config.after :command do |cmd|
		puts "After the run of '#{cmd}'"
	end
end