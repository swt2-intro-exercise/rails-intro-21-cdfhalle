require 'rails_helper'

describe "Author Overview Page", type: :feature do
  it "should exist at 'authors_path' and render withour error" do
    FactoryBot.create :author
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
    expect(page).to have_css('table > tr > th', text: 'Name')
    expect(page).to have_css('table > tr > th', text: 'Homepage')
    expect(page).to have_text("Alan")
    expect(page).to have_text("Turing")
    expect(page).to have_text("http://wikipedia.de/Alan_Turing")
  end
end