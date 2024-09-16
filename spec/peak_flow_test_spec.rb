require "spec_helper"

describe "PeakFlowTest" do
  it "injects the right env vars" do
    expect(ENV.fetch("FIRST_NAME")).to eq "Kasper"
    expect(ENV.fetch("LAST_NAME")).to eq "Johansen"
    expect(ENV.fetch("RUBY_VERSION")).to eq "ruby-2.7.5"
  end
end
