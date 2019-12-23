require 'pg'

class DatabaseLink
  def self.connect(dbname)
    @@connection = PG.connect(dbname: dbname)
  end

  def self.exec(query)
    @@connection.exec(query)
  end
end