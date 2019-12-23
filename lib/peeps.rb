require 'pg'

class Peeps

  def self.all 
    connection = PG.connect(dbname: 'Chitter')
    result = connection.exec("SELECT * FROM Peeps;")
    result.map {|peep| peep["message"] }
  end
end