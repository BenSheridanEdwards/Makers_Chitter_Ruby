require "database_link"

describe DatabaseLink do
  describe ".connect" do
    it "sets up a connection to a given database via PG" do
      expect(PG).to receive(:connect).with(dbname: "chitter_test")
      DatabaseConnect.connect("chitter_test")
    end
  end

  describe ".exec" do
    it "executes a given query via PG" do
      connection = DatabaseLink.connect("chitter_test")
      expect(connection).to receive(:exec).with("SELECT * FROM peeps;")
      DatabaseLink.exec("SELECT * FROM peeps;")
    end
  end
end