require 'spec_helper'

describe "Static pages" do

describe "Home page" do
  it "should have the content 'Sample App'" do
    visit '/home'
    expect(page).to have_content('Sample App')
  end
  it "should have the right title" do
  visit '/home'
  expect(page).to have_title("ReNewText | Home")
end
end

describe "Help page" do
  it "should have the content 'help'" do
    visit '/help'
    expect(page).to have_content('help')
  end
  it "should have the right title" do
  visit '/help'
  expect(page).to have_title("ReNewText | Help")
end
end

describe "About page" do

    it "should have the content 'About Us'" do
      visit '/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
  visit '/about'
  expect(page).to have_title("ReNewText | About Us")
end
  end

end