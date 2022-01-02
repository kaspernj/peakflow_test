require "spec_helper"
require "socket"

describe "PeakFlowTest" do
  it "translates the hostname to an ip" do
    ip = IPSocket.getaddress("postgres")
    expect(ip).to match /^(\d+)\.(\d+)\.(\d+)\.(\d+)$/
  end

  it "connects to the postgres database" do
    require "pg"

    rows = []

    conn = PG.connect(host: "postgres", dbname: "database", user: "user", password: "password")
    conn.exec("SELECT 1 AS count") do |result|
      result.each do |row|
        rows << row.to_h
      end
    end

    expect(rows).to eq [{"count" => "1"}]
  end
end
