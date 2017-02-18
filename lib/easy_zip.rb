require "easy_zip/version"
require "easy_zip/file"
require "easy_zip/strings"

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

    # compress string.
    # @param [String] str compress string.
    # @param [Integer] level compress level. reference Zlib.
    # @return [String] compress string.
    def self.compress(str, level = Zlib::BEST_SPEED)

      # compress string.
      EasyZip::Strings.compress(str, level)
    end

    # decompress string.
    # @param [String] str decompress string.
    # @return [String] decompress string.
    def self.decompress(str)

      # decompress string.
      EasyZip::Strings.decompress(str)
    end
  end
end
