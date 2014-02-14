require 'spec_helper'

feature "User browses the peeps" do

  before(:each) {
      Peep.create( :id => "1",
                  :title => "some blether")
  }

  scenario "when on the homepage " do
    expect(page).to have_content("some blether")
  end
end