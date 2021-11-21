require 'rails_helper'

describe "Author Overview Page", type: :feature do
  it "should exist at 'authors_path' and render withour error" do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
    expect(page).to have_table
    expect(page.all('table > tr').count) == 1
    # expect(page).to have_css('table > tr > th:nth-child(1)', text: 'Name')
    # expect(page).to have_css('table > tr > th:nth-child(2)', text: 'Homepage')
    # expect(page).to have_link 'Show', href: author_path

  end
#   it "should have text inputs for an author's first name, last name, and homepage" do
#     visit new_author_path
#     # these are the standard names given to inputs by the Rails form builder
#     expect(page).to have_field('author[first_name]')
#     expect(page).to have_field('author[last_name]')
#     expect(page).to have_field('author[homepage]')
#   end
end