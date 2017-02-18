require 'spec_helper'
require 'zlib'

describe EasyZip do

  let (:gzip_file) { 'C:\GitHub\test.gz' }
  let (:gzip_value) { 'value' }
  let (:gzip_lines) { ['first line.', 'second line.', 'third_line.'] }
  let (:compress_str) { 'compress string' }

  it 'has a version number' do
    expect(EasyZip::VERSION).not_to be nil
  end

  it 'read lines test' do

    Zlib::GzipWriter.open(gzip_file) { |gz|
      gzip_lines.each { |line|
        gz.puts(line)
      }
    }

    lines = EasyZip::Gzip.read_lines(gzip_file)

    expect(gzip_lines[0]).to eq lines[0].chomp
    expect(gzip_lines[1]).to eq lines[1].chomp
    expect(gzip_lines[2]).to eq lines[2].chomp

    File.delete(gzip_file)
  end

  it 'write value test' do

    EasyZip::Gzip.write_lines(gzip_file, gzip_value)

    lines = nil
    Zlib::GzipReader.open(gzip_file) { |gz|
      lines = gz.readlines
    }

    expect(gzip_value).to eq lines[0].chomp

    File.delete(gzip_file)
  end

  it 'write lines test' do

    EasyZip::Gzip.write_lines(gzip_file, gzip_lines)

    lines = nil
    Zlib::GzipReader.open(gzip_file) { |gz|
      lines = gz.readlines
    }

    expect(gzip_lines[0]).to eq lines[0].chomp
    expect(gzip_lines[1]).to eq lines[1].chomp
    expect(gzip_lines[2]).to eq lines[2].chomp

    File.delete(gzip_file)
  end

  it 'compress test' do

    test_str = EasyZip::Gzip.compress(compress_str)
    # puts test_str
    expect(test_str).to be_truthy
  end

  it 'decompress test' do

    test_str = EasyZip::Gzip.compress(compress_str)
    test_str = EasyZip::Gzip.decompress(test_str)
    # puts test_str
    expect(compress_str).to eq test_str
  end
end
