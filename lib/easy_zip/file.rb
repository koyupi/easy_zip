require 'zlib'

# easy zip module.
module EasyZip

  # file class.
  class File

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
    # @param [String / Array] values write value or lines(Array).
    def self.write_lines(filepath, values)

      lines = nil
      # if values is String, create new Array instance.
      if values.is_a?(String)
        lines = [values]
      elsif values.is_a?(Array)
        lines = values
      end

      Zlib::GzipWriter.open(filepath) { |gz|
        # write to gzip file.
        lines.each { |line|
          gz.puts(line)
        }
      }
    end
  end
end