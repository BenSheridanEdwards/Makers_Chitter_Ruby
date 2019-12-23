feature 'Viewing Peeps' do
  scenario 'A user can see a list of peeps' do
    connection = PG.connect(dbname: 'Chitter_test')
    connection.exec("INSERT INTO peeps VALUES(1, 'This is my first peep!');")
    connection.exec("INSERT INTO peeps VALUES(2, 'This is my second peep!');")
    connection.exec("INSERT INTO peeps VALUES(3, 'This is my third peep!');")

    visit ('/chitter')
    expect(page).to have_content "This is my first peep!"
  end
end