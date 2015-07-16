require 'spec_helper'
describe "Static pages" do


describe "Home page" do
it "should have the content 'Our Demo App'" do
visit '/static_pages/home'
page.should have_content('Our Demo App')
end

it "description" do
visit '/static_pages/home'
page.find 'meta[name="description"]', :visible => false
end

it "should have the title 'Home'" do
visit '/static_pages/home'
page.should have_selector('title',:text => "Demo App | Home")
end
end

describe "About Us page" do
it "should have the content 'About Us'" do
visit '/static_pages/about'
page.should have_content('About Us')
end

it "description" do
visit '/static_pages/about'
page.find 'meta[name="description"]', :visible => false
end

it "should have the title 'About Us'" do
visit '/static_pages/about'
page.should have_selector('title',:text => "Demo App | About Us")
end
end

describe "Contact Us" do
it "should have the content 'Sample App'" do
visit '/static_pages/contact'
page.should have_content('Contact Us')
end

it "description" do
visit '/static_pages/contact'
page.find 'meta[name="description"]', :visible => false
end

it "should have the title 'Contact'" do
visit '/static_pages/contact'
page.should have_selector('title',:text => "Demo App | Contact Us")
end
end

describe "location page" do
it "should have the content 'Location'" do
visit '/static_pages/location'
page.should have_content('Location')
end

it "description" do
visit '/static_pages/location'
page.find 'meta[name="description"]', :visible => false
end

it "should have the title 'Location'" do
visit '/static_pages/location'
page.should have_selector('title',:text => "Demo App | Location")
end
end


end