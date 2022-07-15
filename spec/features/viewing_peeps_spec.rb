feature "Viewing Peeps" do
  scenario 'Users can view all peeps' do
    visit('/')
    expect(page).to have_content "This is a peep"
  end
end