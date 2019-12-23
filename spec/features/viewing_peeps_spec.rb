feature 'Viewing Peeps' do
  scenario 'A user can see a list of peeps' do
  visit ('/chitter')
  expect(page).to have_content "This is my first peep!"
  end
end