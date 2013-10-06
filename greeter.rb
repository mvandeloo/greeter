#!/usr/bin/env ruby

class Megagreeter
	attr_accessor :names

	def initialize(names= "Welt")
	@names=names	
	end

	def sag_hallo
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do |name|
			puts "Hallo, #{name}"
			end
		else
			puts "Hallo, #{@names}!"
		end
	end

	def sag_tschuess
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			@names.each do |name|
			puts "Tschuess, #{name}"
			end
		else
			puts "Tschuess, #{@names}!"
		end
	end
end

if __FILE__ == $0
	mg = Megagreeter.new
	mg.sag_hallo
	mg.sag_tschuess

	mg.names = ["Albert", "Bianca", "Carl", "Carl-Heinz", "David", "Engelbert"]
	mg.sag_hallo
	mg.sag_tschuess

	mg.names = nil
	mg.sag_hallo
	mg.sag_tschuess

end
