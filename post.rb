#!/usr/bin/env ruby
#
class Post
  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    #todo
  end

  def to_string
    #todo
  end

  def save
    file = File.new(file_path, 'w:UTF-8')

    to_string.each { |string| file.puts(string) }
    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    current_path + '/' + file_name
  end
end