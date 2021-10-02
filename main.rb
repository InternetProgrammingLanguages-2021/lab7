# frozen_string_literal: true

# reverses every line in file and writes those lines
# to output file in reverse order
# @param input_filename [String]
# @param output_filename [String]
def reverse_file(input_filename = 'f.txt', output_filename = 'g.txt')
  input = File.readlines(input_filename, chomp: true)
  File.write(output_filename, input.reverse.map(&:reverse).join("\n"))
end
