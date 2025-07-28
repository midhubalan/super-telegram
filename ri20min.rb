#!/usr/bin/env ruby

class MegaGreeter
  attr_accessor :names

  # initialize the greeter
  def initialize( names = "world")
    @names = names
  end

  # Say hi to eveybody
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Hello, #{name.capitalize}!"
      end
    else
      puts "Hello, #{@names.capitalize}!"
    end
  end
  
  # Say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to? "join"
      puts "Good bye #{ @names.join(", ")}. Come back soon!"
    else
      puts "Good bye #{ @names}. Come back soon!"
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  mg.names = "zeke"
  mg.say_hi
  mg.say_bye

  mg.names = ["Albert", "Brenda", "Charles",
              "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  mg.names = nil
  mg.say_hi
  mg.say_bye
end