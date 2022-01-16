# frozen_string_literal: true

# class containing utils for files
class FileUtil
  def self.reverse_file(input_filename = 'f.txt', output_filename = 'g.txt')
    input = File.readlines(input_filename, chomp: true)
    File.write(output_filename, input.reverse.map(&:reverse).join("\n"))
  end
end
