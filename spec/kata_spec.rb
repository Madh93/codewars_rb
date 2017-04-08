$LOAD_PATH << File.expand_path('..', __FILE__)

require 'spec_helper'

describe Kata do
  it 'has a version number' do
    Kata::VERSION.wont_be_nil
  end
end
