require 'spec_helper'

describe "Add a restaurant", :type => :feature, :js => true do
  let(:user){ Fabricate(:user) }

  it "posts a new restaurant" do
    visit article_path(article)
    fill_in "comment_author_name", :with => "Cowboy"
    fill_in "comment_body", :with => "Testing is too hard."
    click_link_or_button "post_comment"
    within('#comments') do
      expect(page).to have_content("Cowboy said")
      expect(page).to have_content("Testing is too hard.")
    end
  end
end
