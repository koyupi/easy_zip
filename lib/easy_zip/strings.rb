require 'zlib'

# easy zip module.
module EasyZip

  # Strings class
  class Strings

    # compress string.
    # @param [String] str compress string.
    # @param [Integer] level compress level. reference Zlib.
    # @return [String] compress string.
    def self.compress(str, level = Zlib::BEST_SPEED)

      # compress string.
      Zlib::Deflate.deflate(str, level)
    end

    # decompress string.
    # @param [String] str decompress string.
    # @return [String] decompress string.
    def self.decompress(str)

      # decompress string.
      Zlib::Inflate.inflate(str)
    end
  end
end
