require 'spec_helper'

describe GlobalGoal do
  subject { page }

  describe 'index page' do
    before { visit global_goals_path }

    it { should have_title('adventureList | Global goals') }
    it { should have_selector('h1', text: 'Global goals') }
  end
end