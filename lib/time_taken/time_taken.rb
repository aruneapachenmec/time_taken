module TimeTaken

	@time_formats = {milli_seconds: 1000,seconds: 1, minutes: 0.16}

	def self.time_taken(format=:milli_seconds, &block)
		if block_given? && valid_format?(format)
			start_time = Time.now
			block.call 
			end_time = Time.now
			((end_time - start_time) * @time_formats[format])
		else
			0
		end
	end

	def self.valid_format? format 
		!@time_formats[format].nil?
	end
end
