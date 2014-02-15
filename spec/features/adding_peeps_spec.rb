require 'spec_helper'

feature "User browses the peeps" do



  # scenario "when on the homepage " do
  #   expect(peep.count).to eq(0)
  #   Peep.create
  #   expect.(peep.count).to eq(1)
  #   Peep.destroy
  #   expect.(peep.count).to eq(0)
  # end
  scenario "when browsing the homepage" do
    expect(Peep.count).to eq(0)
    visit '/'
    add_peep("blether", "some nonsense")
    expect(Peep.count).to eq(1)
    peep = Peep.first
    expect(peep.title).to eq("blether")
    expect(peep.message).to eq("some nonsense")
  end

  def add_peep(title, message)
    within('#new-peep') do
      fill_in 'title', :with => title
      fill_in 'message', :with => message
      click_button 'Add peep'
    end      
  end
end