require "easy_zip/version"
require "easy_zip/file"

# easy zip module.
module EasyZip

  # gzip class.
  class Gzip

    # read all lines in gzip file.
    # @param [String] filepath read filepath.
    # @return [Array] file lines.
    def self.read_lines(filepath)

      EasyZip::File.read_lines(filepath)
    end

    # write all lines to gzip file.
    # @param [String] filepath write filepath.
    # @param [String / Array] values write value or lines(Array).
    def self.write_lines(filepath, values)

      EasyZip::File.write_lines(filepath, values)
    end
  end
end
