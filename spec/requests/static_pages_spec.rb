require 'spec_helper'


#visit - is a Capybara function to simulate the visiting

describe "StaticPages" do

	subject { page }

	describe "Home page" do

		before { visit root_path }
      describe "for signed-in users" do
        let(:user) { FactoryGirl.create(:user) }
        before do
          FactoryGirl.create(:micropost, user: user, content: "Lorem")
          FactoryGirl.create(:micropost, user: user, content: "Ipsum")
          sign_in user
          visit root_path
        end

        it "should render the user's feed" do
          user.feed.each do |item|
            page.should have_selector("li##{item.id}", text: item.content)
          end
        end

        describe "follower/following counts" do
          let(:other_user) { FactoryGirl.create(:user) }
          before do
            other_user.follow!(user)
            visit root_path
          end

          it { should have_link("0 following", href: following_user_path(user)) }
          it { should have_link("1 followers", href: followers_user_path(user)) }
        end
      end  

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


    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          page.should have_selector("li##{item.id}", text: item.content)
        end
      end
    end
	end

	describe "About page" do
    	before { visit contact_path }

    	it { should have_selector('h1',    text: 'Contact') }
    	it { should have_selector('title', text: full_title('Contact')) }
  	end

end
