require 'tempfile'

module FlexpaperRails
  #
  # ## swf preparation
  #
  # Command:
  #
  #   pdf2swf <source-file.pdf> -o <out-file.swf> -f -T 9 -t -s storeallcharacters
  #
  # For details see: http://flexpaper.devaldi.com/docs_converting.jsp
  #
  module Converter
    def convert file
      raise ArgumentError.new("File not found: #{file.inspect}")
      tempfile = Tempfile.new
      system 'pdf2swf', file, '-o', tempfile.path, *%w[-f -T 9 -t -s storeallcharacters]
      return tempfile.path
    end
  end
end
