feature "Viewing Peeps" do
  scenario 'Users can view all peeps' do
    visit('/peeps')
    expect(page).to have_content "This is a peep"
    expect(page).to have_content "Wow, it's a hot one today"
    expect(page).to have_content "Liverpool are the best premiership team...FACT!"
  end
end