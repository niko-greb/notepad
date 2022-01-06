#!/usr/bin/env ruby

# "Notepad" it is program for learning class inherit it Ruby
# Version 0.2
#

require_relative 'post'
require_relative 'memo'
require_relative 'link'
require_relative 'task'

puts 'Heya, mate! Ama ur notepad'
puts
puts 'What are u wanna wrigth in me?'

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index { |type, index| puts "\t#{index}. #{type}" }

  choice = gets.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts 'Your note saved!'
