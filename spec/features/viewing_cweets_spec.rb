feature 'Viewing Cweets' do
  scenario 'A user can see a list of cweets' do
  visit ('/chitter')
  expect(page).to have_content "This is my first cweet!"
  end
end