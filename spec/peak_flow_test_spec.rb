require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'PeakFlowTest' do
  it "connect to postgres on localhost" do
    require "mysql2"

    client = Mysql2::Client.new(
      host: "localhost",
      username: "build",
      password: "my-secret-password",
      database: "databasename"
    )

    result = client.query("SELECT 'Hello world' AS message")

    expect(result.to_a).to eq ["message" => "Hello world"]
  end
end
