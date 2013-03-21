require 'spec_helper'

describe "StaticPages" do

  describe "Home pages"  do

    it "should have h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end
end

#   describe "Home pages" do

#     it "should have the h1 'Sample App'" do
#       visit '/static_pages/home'
#       page.should have_content('Sample App')
#       # # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       # get static_pages_index_path
#       # response.status.should be(200)
#     end

#     # it "should have the title 'home'" do
#     #   visit '/static_pages/home'
#     #   page.should have_selector('title',
#     #   	                        :text => "Ruby on rails Tutorial Sample App | Home")

#     # end
#     it "should have the title 'Home'" do
#       visit '/static_pages/home'
#       page.should have_selector('title',
#                         :text => "Ruby on Rails Tutorial Sample App | Home")
#     end
#   end
#   describe "Help page" do

#     it "should have the h1 'help'" do
#       visit '/static_pages/help'
#       page.should have_selector('h1', :text => 'Help')
#     end

#     it "should have the title 'Help'" do
#       visit '/static_pages/help'
#       page.should have_selector('title',
#                         :text => "Ruby on Rails Tutorial Sample App | Help")
#     end
#   end


#   describe "About page" do

#     it "should have the h1 'About us'" do
#       visit '/static_pages/about'
#       page.should have_selector('h1', :text => 'About Us')
#     end

#     it "should have the title 'About Us'" do
#       visit '/static_pages/about'
#       page.should have_selector('title',
#                                 :text => "Ruby on Rails Tutorial Sample App | About Us")
#     end
#   end
#  describe "Contact page" do

#     it "should have the h1 'Contact'" do
#       visit '/static_pages/contact'
#       page.should have_selector('h1', :text => 'Contact')
#     end

#     it "should have the title 'Contact'" do
#       visit '/static_pages/contact'
#       page.should have_selector('title', :text => "| Contact")
#     end
#   end
# end