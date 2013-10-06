require 'spec_helper'

describe "static pages" do

  subject { page }

  describe "home page" do
    before { visit root_path }

    it { should have_title('adventureList | Home') }
    it { should have_selector('h1', text: 'Welcome to adventureList') }
  end

  describe "about page" do
    before { visit about_path }

    it { should have_title('adventureList | About') }
    it { should have_selector('h1', text: 'About adventureList') }
  end

  describe "contact page" do
    before { visit contact_path }

    it { should have_title('adventureList | Contact') }
    it { should have_selector('h1', text: 'Contact adventureList') }
  end
end