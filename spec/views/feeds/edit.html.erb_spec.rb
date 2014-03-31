require 'spec_helper'

describe "feeds/edit" do
  before(:each) do
    @feed = assign(:feed, stub_model(Feed,
      :title => "MyString",
      :description => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit feed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feed_path(@feed), "post" do
      assert_select "input#feed_title[name=?]", "feed[title]"
      assert_select "input#feed_description[name=?]", "feed[description]"
      assert_select "input#feed_url[name=?]", "feed[url]"
    end
  end
end
