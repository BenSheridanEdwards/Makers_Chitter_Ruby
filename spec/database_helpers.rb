require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'chitter_test')
  connection.exec("TRUNCATE peeps, users;")
end

def persistent_data(table:, id:)
  DatabaseLink.exec("SELECT * FROM #{table} WHERE id='#{id}';")
end