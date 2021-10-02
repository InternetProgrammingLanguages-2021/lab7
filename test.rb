# frozen_string_literal: true

require 'minitest/autorun'
require './main'

INPUT = 'Lorem ipsum dolor sit amet,
consectetur adipiscing elit. Curabitur tempor felis
ut nisi sollicitudin, a pulvinar tortor rutrum.
Nunc quis odio tellus. Fusce eget lobortis magna.
Integer congue non velit hendrerit euismod. Sed nec
dignissim sapien, vitae porttitor est. Nam tincidunt
id nisi vitae cursus.'

OUTPUT = '.susruc eativ isin di
tnudicnit maN .tse rotittrop eativ ,neipas missingid
cen deS .domsiue tirerdneh tilev non eugnoc regetnI
.angam sitrobol tege ecsuF .sullet oido siuq cnuN
.murtur rotrot ranivlup a ,niduticillos isin tu
silef ropmet rutibaruC .tile gnicsipida rutetcesnoc
,tema tis rolod muspi meroL'

# Tests file operations
class TestFiles < Minitest::Test
  def initialize(name)
    super name
    @input_filename = 'f.txt'
    @output_filename = 'g.txt'
  end

  def setup
    File.delete @input_filename if File.exist? @input_filename
    File.delete @output_filename if File.exist? @output_filename
  end

  def teardown
    File.delete @input_filename if File.exist? @input_filename
    File.delete @output_filename if File.exist? @output_filename
  end

  def test_empty
    File.write(@input_filename, '')
    reverse_file(@input_filename, @output_filename)
    assert_path_exists(@output_filename)
  end

  def test_file
    File.write(@input_filename, INPUT)
    reverse_file(@input_filename, @output_filename)
    assert_path_exists @output_filename
    assert_equal OUTPUT, File.read(@output_filename)
  end
end
