require './lib/database_link'

if ENV['ENVIRONMENT'] == 'test'
  DatabaseLink.connect("chitter_test")
else
  DatabaseLink.connect("chitter")
end