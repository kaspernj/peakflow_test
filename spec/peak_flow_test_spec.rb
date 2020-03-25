require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'PeakFlowTest' do
  it 'injects the right env vars' do
    expect(ENV.fetch("FIRST_NAME")).to eq "Kasper"
    expect(ENV.fetch("LAST_NAME")).to eq "Johansen"
  end
end
