# frozen_string_literal: true

require './main'

File.write('f.txt', 'Lorem ipsum dolor sit amet,
consectetur adipiscing elit. Curabitur tempor felis
ut nisi sollicitudin, a pulvinar tortor rutrum.
Nunc quis odio tellus. Fusce eget lobortis magna.
Integer congue non velit hendrerit euismod. Sed nec
dignissim sapien, vitae porttitor est. Nam tincidunt
id nisi vitae cursus.')
FileUtil.reverse_file
puts "Here is some file manipulation

Original file:
#{File.read 'f.txt'}

Modified file:
#{File.read 'g.txt'}"
