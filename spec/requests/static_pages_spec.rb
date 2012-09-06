require "rspec"

describe "Home Page" do

  it "should do something" do
    visit '/static_pages/home'
    page.should have_content 'Gallery App'
  end
end