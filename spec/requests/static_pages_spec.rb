require 'spec_helper'


#visit is a Capybara function to simulate the visiting

describe "StaticPages" do

	subject { page }

	describe "Home page" do

		before { visit root_path }

    	it "should have the content 'Sample App'" do
      		should have_selector('h1', text: 'Sample App')
  	  	end

  	  	it "should have the right title" do
  			should have_selector('title', text: full_title(''))
		end
		
		it "should not have a custom page title" do
    		should_not have_selector('title', text: '| Home')
  		end
  	end

  	describe "Help page" do
		before { visit help_path }

    	it { should have_selector('h1',    text: 'Help') }
    	it { should have_selector('title', text: full_title('Help')) }
	end

	describe "About page" do
    	before { visit contact_path }

    	it { should have_selector('h1',    text: 'Contact') }
    	it { should have_selector('title', text: full_title('Contact')) }
  	end

end
