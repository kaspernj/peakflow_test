require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'PeakFlowTest' do
  it "connect to postgres on localhost" do
    require "pg"

    conn = PG.connect(
      dbname: "databasename",
      host: "127.0.0.1",
      port: 5432,
      user: "build",
      password: "my-secret-password"
    )

    result = conn.exec("SELECT 'Hello world' AS message")

    expect(result.to_a).to eq ["message" => "Hello world"]
  end
end
