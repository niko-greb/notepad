#!/usr/bin/env ruby

class Link < Post

  def initialize
    super

    @url = ''
  end

  def read_from_console
    puts 'Type url adress: '
    @url = $stdin.gets.chomp

    puts 'Link description: '
    @text = $stdin.gets.chomp
  end

  def to_string
    time_string = "Created at: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')} \n\r"

    [@url, @text, time_string]
  end
end
