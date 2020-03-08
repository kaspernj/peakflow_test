require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'PeakFlowTest' do
  it 'connects to the postgres database' do
    require "pg"

    rows = []

    conn = PG.connect(host: "postgres", dbname: "database", user: "user", password: "password")
    conn.exec("SELECT 1 AS count") do |result|
      result.each do |row|
        rows << row.to_h
      end
    end

    expect(rows).to eq [{count: 1}]
  end
end
