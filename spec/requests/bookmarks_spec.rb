require 'spec_helper'

describe "Bookmarks" do
  
  before do
      @bookmark = Bookmark.new(url: "www.Google.com", name: "Google Home")
    end

    subject { @bookmark }

    it { should respond_to(:url) }
    it { should respond_to(:name) }

    it { should be_valid }

    describe "when url is not present" do
      before { @bookmark.url = " " }
      it { should_not be_valid }
    end
    
    describe "when name is not present" do
      before { @bookmark.name = " " }
      it { should_not be_valid }
    end
    
    describe "Bookmarks page" do
      it "should contain a space as that confirms it exists" do
        visit '/bookmarks'
        expect(page).to have_content ' '
      end
    end
    
    describe "New bookmark page" do
      it "should contain a space as that confirms it exists" do
        visit '/bookmarks/new'
        expect(page).to have_content ' '
      end
    end
    
    describe "New bookmark page" do
      it "should contain a space as that confirms it exists" do
        visit '/bookmarks/new'
        expect(page).to have_content ' '
      end
    end

    
    
end
