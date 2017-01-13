require "easy_zip/version"
require 'zlib'

# easy zip module.
module EasyZip

  # gzip class.
  class Gzip

    # read all lines in gzip file.
    # @param [String] filepath read filepath.
    # @return [Array] file lines.
    def self.read_lines(filepath)

      lines = nil
      # read gzip file, and read all lines.
      Zlib::GzipReader.open(filepath) { |gz|
        lines = gz.readlines
      }

      lines
    end

    # write all lines to gzip file.
    # @param [String] filepath write filepath.
    # @param [Array] lines write lines.
    def self.write_lines(filepath, lines)

      Zlib::GzipWriter.open(filepath) { |gz|
        # write to gzip file.
        lines.each { |line|
          gz.puts(line)
        }
      }
    end
  end
end
