require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'PeakFlowTest' do
  it 'fails' do
    require "mongo"
    client = Mongo::Client.new("mongodb://mongo:27017/test")
  end
end
