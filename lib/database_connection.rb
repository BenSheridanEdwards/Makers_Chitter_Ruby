require 'pg'

class Database
  def self.connect(dbname)
    @@connection = PG.connect(dbname: dbname)
  end

  def self.exec(sql)
    @@connection.exec(sql)
  end
end