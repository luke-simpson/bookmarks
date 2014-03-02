require 'spec_helper'

describe Bookmark do
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
end
