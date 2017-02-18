require 'spec_helper'
require 'zlib'

describe EasyZip do

  let (:compress_str) { 'compress string' }

  it 'compress test' do

    test_str = EasyZip::Strings.compress(compress_str)
    # puts test_str
    expect(test_str).to be_truthy
  end

  it 'decompress test' do

    test_str = EasyZip::Strings.compress(compress_str)
    test_str = EasyZip::Strings.decompress(test_str)
    # puts test_str
    expect(compress_str).to eq test_str
  end
end