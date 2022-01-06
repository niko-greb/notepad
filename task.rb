#!/usr/bin/env ruby

require 'date'

class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "What's our task?"
    @text = $stdin.gets.chomp

    puts 'Deadline? Puts date in format dd.mm.year, \n Example: 21.04.2022'
    input = $stdin.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_string
    deadline = "Deadline: #{@due_date.strftime('%Y.%m.%d')}"
    time_string = "Created at: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')} \n\r"

    [deadline, @text, time_string]
  end
end
