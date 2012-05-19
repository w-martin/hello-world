#!/usr/bin/env ruby

class Greeter
  attr_accessor :names
  
  # Constructor
  def initialize(names = "World")
    @names = names
  end
  
  # Greets everyone in names
  def greet
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end
  
  # Waves at everyone in names
  def wave
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      puts "Waves at #{@names.join(", ")}"
    else
      puts "Waves at #{@names}"
    end
  end
  
end

if __FILE__ == $0
  g = Greeter.new
  g.greet()
  
  g.names = "Bilbo"
  g.greet
  
  g.names = ["Fred","Bob"]
  g.greet()
  g.wave()
  
  g.names = nil
  g.greet()
end
