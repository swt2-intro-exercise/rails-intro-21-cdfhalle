require 'rails_helper'

describe "Edit Author Page", type: :feature do
    before do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
    end
    
    it "should exist at 'edit_author_path' and render infos of author withour error" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
    end
    it "should update the author" do
        page.fill_in "author[first_name]",	with: "Jerome"
        page.fill_in "author[last_name]", with: "Wenner"
        page.fill_in "author[homepage]", with: "thisIsAWebsite.html" 
        find("input[type='submit']").click
        @alan.reload
        expect(@alan.first_name).to eq("Jerome")
        expect(@alan.last_name).to eq("Wenner")
        expect(@alan.homepage).to eq("thisIsAWebsite.html")
    end
end