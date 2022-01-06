#!/usr/bin/env ruby

class Memo < Post
  def read_from_console
    puts 'New note (to leave type "end"):'

    line = nil

    until line == 'end'
      line = $stdin.gets.chomp

      @text << line
    end

    @text.pop
  end

  def to_string
    time_string = "Created at: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')} \n\r"

    @text.unhift(time_string)
  end
end
