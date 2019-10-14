require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :user_id => 2,
        :content => "MyText",
        :media => "MyText",
        :recipient_id => 3
      ),
      Post.create!(
        :user_id => 2,
        :content => "MyText",
        :media => "MyText",
        :recipient_id => 3
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
